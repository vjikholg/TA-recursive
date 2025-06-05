#!/usr/bin/env python3
"""
organise_weapon_sounds_surface.py
Run this from *sounds/*.
"""

from __future__ import annotations
from pathlib import Path
import re, shutil, csv, sys

# ─── CATEGORY MAP (extend or rename as you like) ──────────────────────────────
WTYPE_TO_CAT = {
    "Beamlaser":          "BeamLaser",
    "lasercannon":        "LaserCannon",
    "LightningCannon":    "Lightningcannon",
    "Cannon":             "Cannon",
    "MissileLauncher":    "MissileLauncher",
    "TorpedoLauncher":    "TorpedoLauncher",
    "Flame":              "Flame",
}
DEFAULT_CAT = "Misc"
EXPLOSION_CAT = "Explosions"
# ──────────────────────────────────────────────────────────────────────────────

THIS_DIR   = Path.cwd().resolve()                 # sounds/
UNITS_DIR  = THIS_DIR.parent / "units"            # ../units
DEST_ROOT  = THIS_DIR / "sfx_weapons"             # sounds/sfx_weapons

# quick regex helpers
WS = r"[ \t]*"
TAG = lambda t: re.compile(rf"{WS}{t}{WS}={WS}['\"]([^'\"]+)['\"]", re.I)

RE_WTYPE  = TAG("weapontype")
RE_HITDRY = TAG("soundhitdry")
RE_HITWET = TAG("soundhitwet")
RE_START  = TAG("soundstart")

def iter_weapon_blocks(text: str):
    """Yield (block_str) for each '{ ... }' directly under 'weapondefs ='."""
    start = text.lower().find("weapondefs")
    if start == -1:
        return
    # find opening '{'
    brace_idx = text.find("{", start)
    depth = 0
    block = []
    for ch in text[brace_idx:]:
        if ch == "{":
            depth += 1
        if depth >= 2:                # inside a weapon definition
            block.append(ch)
        if ch == "}":
            depth -= 1
            if depth == 1:            # weapon block just closed
                yield "".join(block[:-1])  # drop this closing brace
                block.clear()
        if depth == 0:
            break

def collect_moves() -> list[dict]:
    moves: list[dict] = []
    for ufile in UNITS_DIR.rglob("*.lua"):
        try:
            txt = ufile.read_text(errors="ignore")
        except Exception:
            continue
        for wblock in iter_weapon_blocks(txt):
            wtype_m = RE_WTYPE.search(wblock)
            wtype = wtype_m.group(1).lower() if wtype_m else "unknown"
            cat_start = WTYPE_TO_CAT.get(wtype, DEFAULT_CAT)

            def push(tag_re, cat_override=None):
                for m in tag_re.finditer(wblock):
                    raw = m.group(1).strip()
                    base = Path(raw).name           # drop any folders
                    moves.append({
                        "src_token": raw,
                        "base": base,
                        "wtype": wtype,
                        "category": cat_override or cat_start,
                        "unit": ufile.relative_to(UNITS_DIR.parent),
                    })

            push(RE_START)                           # weapon-type folder
            push(RE_HITDRY, EXPLOSION_CAT)           # explosions
            push(RE_HITWET, EXPLOSION_CAT)
    # dedup identical (file,category) combos
    uniq = {(m["base"], m["category"]): m for m in moves}
    return list(uniq.values())

def find_source_file(base: str) -> Path | None:
    for ext in [".ogg", ".wav", ".flac", ".WAV", ""]:
        cand = next((p for p in THIS_DIR.rglob(base + ext) if p.is_file()), None)
        if cand:
            return cand
    return None

def preview(moves: list[dict]) -> list[dict]:
    print("\nPlanned moves:\n")
    for i, m in enumerate(moves, 1):
        src = find_source_file(m["base"])
        src_rel = src.relative_to(THIS_DIR) if src else "❌ missing"
        tgt_rel = (DEST_ROOT / m["category"] / m["base"]).relative_to(THIS_DIR)
        print(f"{i:>3}. {m['base']:<25}  {m['wtype']:<12}  {src_rel} → {tgt_rel}")
        m["src"] = src
        m["tgt"] = DEST_ROOT / m["category"] / m["base"]
    drop = input("\nNumbers to EXCLUDE (space/comma) or just Enter > ").strip()
    if drop:
        skip = {int(x) for x in re.split(r"[,\s]+", drop) if x.isdigit()}
        moves = [m for i, m in enumerate(moves, 1) if i not in skip]
    if not moves:
        print("Nothing to move — exiting.")
        sys.exit(0)
    if input(f"\nMove {len(moves)} file(s)? [y/N] ").lower() not in {"y","yes"}:
        print("Aborted.")
        sys.exit(0)
    return moves

def execute(moves: list[dict]):
    DEST_ROOT.mkdir(parents=True, exist_ok=True)
    with open("sound_moves.csv", "w", newline="") as fcsv:
        w = csv.writer(fcsv)
        w.writerow(["src", "tgt", "wtype", "unit"])

        for m in moves:
            src: Path = m["src"]
            if not src or not src.exists():
                print(f"⚠️  missing {m['base']} (skipped)")
                continue

            # --- NEW: keep the real filename, extension included -------------
            tgt = DEST_ROOT / m["category"] / src.name
            # -----------------------------------------------------------------

            tgt.parent.mkdir(parents=True, exist_ok=True)
            new_tgt = tgt
            counter = 1
            while new_tgt.exists():
                new_tgt = tgt.with_stem(f"{tgt.stem}_{counter}")  # keeps suffix
                counter += 1

            shutil.move(src, new_tgt)
            w.writerow([src.relative_to(THIS_DIR),
                        new_tgt.relative_to(THIS_DIR),
                        m["wtype"], m["unit"]])
            print(f"✔ {src.relative_to(THIS_DIR)} → {new_tgt.relative_to(THIS_DIR)}")

def main():
    moves = collect_moves()
    if not moves:
        print("No sounds referenced in unit files.")
        return
    moves = preview(moves)
    execute(moves)

if __name__ == "__main__":
    try:
        main()
    except KeyboardInterrupt:
        sys.exit("\nInterrupted.")
