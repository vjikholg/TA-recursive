#!/usr/bin/env python3
"""
organise_unit_sounds.py
Run this script from inside *sounds/*.

• Scans ../units/**/*.lua for unitDef.sounds tables
• Maps each sound key to the correct sfx_* folder
• Air units (category contains 'VTOL') get _air movement folders
• Interactive preview → exclude → confirm → move
"""

from __future__ import annotations
from pathlib import Path
import re, shutil, csv, sys

# ─── FOLDER MAPS ──────────────────────────────────────────────────────────────
BASE_MAP = {
    "build":        "sfx_weapons/Misc",
    "repair":       "sfx_weapons/Misc",
    "working":      "sfx_movement/on-reply",
    "underattack":  "sfx_ui",
    "cant":         "sfx_movement/on-reply",   # single-string table allowed
    "select":       "sfx_movement/on-select",
    "ok":           "sfx_movement/on-movement",
    "activate":     "sfx_units/on-activate",
    "deactivate":   "sfx_units/on-deactivate",
    "arrived":      "sfx_movement/on-arrive",
}

AIR_OVERRIDE = {
    "working": "sfx_movement_air/on-reply",
    "cant":    "sfx_movement_air/on-reply",
    "select":  "sfx_movement_air/on-select",
    "ok":      "sfx_movement_air/on-movement",
    "arrived": "sfx_movement_air/on-arrive",
}

BUILDING_OVERRIDE = {
    "cant":    "sfx_building/on-reply",
    "select":  "sfx_building/on-select",
    "ok":      "sfx_building/on-okay",
    "underattack": "sfx_building/on-underattack",
    "activate":     "sfx_building/on-activate",
    "deactivate":   "sfx_building/on-deactivate",
}
# ──────────────────────────────────────────────────────────────────────────────

THIS_DIR  = Path.cwd().resolve()          # sounds/
UNITS_DIR = THIS_DIR.parent / "units"     # ../units
DEST_ROOT = THIS_DIR                      # keep everything under sounds/

# quick regex helpers
WS = r"[ \t]*"
QUOTED = r"['\"]([^'\"]+)['\"]"
TAG = lambda k: re.compile(rf"{WS}{k}{WS}={WS}{QUOTED}", re.I)

RE_ICONTYPE = re.compile(r"\bicontype\b\s*=\s*['\"]building['\"]", re.I)
RE_CATEGORY = TAG("category")
RE_SOUNDS = re.compile(r"\bsounds\b[^=]*=", re.I)
RE_SOUND_KEY= re.compile(rf"{WS}({ '|'.join(BASE_MAP) }){WS}={WS}", re.I)

def parse_sounds_block(text: str, key_pos: int) -> str:
    """Return the substring from the '{' after 'sounds =' to its matching '}'."""
    brace = text.find("{", key_pos)
    depth, out = 0, []
    for ch in text[brace:]:
        if ch == "{": depth += 1
        if depth: out.append(ch)
        if ch == "}":
            depth -= 1
            if depth == 0: break
    return "".join(out)

def extract_sound_items(block: str) -> dict[str, list[str]]:
    """
    Returns {soundKey: [file1, file2, ...]}.
    Accepts both list form  key = {'a','b'}  and single-string form key = 'a'
    """
    res: dict[str, list[str]] = {}
    for m in RE_SOUND_KEY.finditer(block):
        key = m.group(1).lower()
        tail = block[m.end():].lstrip()
        if tail.startswith("{"):                        # list
            end = tail.find("}")
            list_body = tail[1:end]
            files = re.findall(QUOTED, list_body)
        else:                                          # single string
            files = re.findall(QUOTED, tail.split(",", 1)[0])
        if files:
            res.setdefault(key, []).extend(files)
    return res

def collect_moves() -> list[dict]:
    moves = []
    for ufile in UNITS_DIR.rglob("*.lua"):
        text = ufile.read_text(errors="ignore")
        cat_m = RE_CATEGORY.search(text)
        is_building = bool(RE_ICONTYPE.search(text))
        is_air      = not is_building and bool(RE_CATEGORY.search(text)) and "VTOL" in RE_CATEGORY.search(text).group(1).upper()
        # scan every 'sounds =' block
        for m in RE_SOUNDS.finditer(text):
            block = parse_sounds_block(text, m.end())
            items = extract_sound_items(block)
            for key, files in items.items():
                folder = (
                    BUILDING_OVERRIDE.get(key)
                    if is_building and key in BUILDING_OVERRIDE
                    else AIR_OVERRIDE.get(key) if is_air and key in AIR_OVERRIDE
                    else BASE_MAP[key]
                )
                
                
                AIR_OVERRIDE[key] if is_air and key in AIR_OVERRIDE else BASE_MAP[key]
                for f in files:
                    base = Path(f).name  # strip any path pieces
                    moves.append({
                        "base": base,
                        "key": key,
                        "unit": ufile.relative_to(UNITS_DIR.parent),
                        "folder": folder,
                    })
    # deduplicate (filename, folder)
    uniq = {(m["base"], m["folder"]): m for m in moves}
    return list(uniq.values())

def find_source(base: str) -> Path | None:
    for ext in [".ogg", ".wav", ".flac", ".WAV", ""]:
        cand = THIS_DIR.glob(base + ext)
        cand = next(cand, None)
        if cand and cand.is_file():
            return cand
    return None

def preview(moves: list[dict]) -> list[dict]:
    print("\nPlanned moves:\n")
    for i, m in enumerate(moves, 1):
        src = find_source(m["base"])
        src_rel = src.relative_to(THIS_DIR) if src else "❌ missing"
        tgt_rel = (DEST_ROOT / m["folder"] / (src.name if src else m["base"])).relative_to(THIS_DIR)
        print(f"{i:>3}. {m['base']:<25} {m['key']:<12} {src_rel} → {tgt_rel}")
        m["src"] = src
        m["tgt"] = DEST_ROOT / m["folder"] / (src.name if src else m["base"])
    drop = input("\nExclude numbers (space/comma) or Enter to keep all > ").strip()
    if drop:
        skip = {int(x) for x in re.split(r"[,\s]+", drop) if x.isdigit()}
        moves = [m for i, m in enumerate(moves, 1) if i not in skip]
    if not moves:
        print("Nothing to move — exiting."); sys.exit(0)
    if input(f"\nMove {len(moves)} files? [y/N] ").lower() not in {"y","yes"}:
        print("Aborted."); sys.exit(0)
    return moves

def execute(moves: list[dict]):
    with open("unit_sound_moves.csv", "w", newline="") as fcsv:
        w = csv.writer(fcsv)
        w.writerow(["src", "dest", "soundKey", "unit"])
        for m in moves:
            src, tgt = m["src"], m["tgt"]
            if not src or not src.exists():
                print(f"⚠️  missing {m['base']} (skipped)"); continue
            tgt.parent.mkdir(parents=True, exist_ok=True)
            new_tgt, c = tgt, 1
            while new_tgt.exists():
                new_tgt = tgt.with_stem(f"{tgt.stem}_{c}"); c += 1
            shutil.move(src, new_tgt)
            w.writerow([src.relative_to(THIS_DIR), new_tgt.relative_to(THIS_DIR),
                        m["key"], m["unit"]])
            print(f"✔ {src.relative_to(THIS_DIR)} → {new_tgt.relative_to(THIS_DIR)}")
    print("\nLog written to unit_sound_moves.csv")

def main():
    moves = collect_moves()
    if not moves:
        print("No unit sounds found."); return
    moves = preview(moves)
    execute(moves)

if __name__ == "__main__":
    try: main()
    except KeyboardInterrupt: sys.exit("\nInterrupted.")
