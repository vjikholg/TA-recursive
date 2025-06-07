#!/usr/bin/env python3
"""
swap_weapon_sfx.py
──────────────────
• Scan sounds/weapons/** for *.wav files.
• For each file, look in sounds/sfx_weapons/** for a file with
  the *same basename* (ignoring sub-folders).
• Show a preview table:
      idx. <basename>   weapons/<path>  →  sfx_weapons/<path>
• Let the user exclude swaps by typing numbers.
• On confirmation, overwrite the destination file, saving a .bak
  alongside it for safety.  All actions are logged to swap_log.csv.
"""

from __future__ import annotations
from pathlib import Path
import shutil, csv, re, sys

ROOT        = Path.cwd().resolve()          # sounds/
WEAPONS_DIR = ROOT / "weapons"
SFX_DIR     = ROOT / "sfx_weapons"
EXT         = ".wav"                        # change / add others if needed

def gather_sources() -> list[Path]:
    return [p for p in WEAPONS_DIR.rglob("*"+EXT) if p.is_file()]

def find_target(base: str) -> Path | None:
    try:
        return next(SFX_DIR.rglob(base))
    except StopIteration:
        return None

def preview(swaps: list[dict]) -> list[dict]:
    print("\nPlanned swaps:\n")
    for i, m in enumerate(swaps, 1):
        src_rel = m["src"].relative_to(ROOT)
        tgt_rel = m["tgt"].relative_to(ROOT) if m["tgt"] else "❌ not found"
        print(f"{i:>3}. {m['base']:<25}  {src_rel}  →  {tgt_rel}")
    excl = input(
        "\nNumbers to EXCLUDE (space/comma) or Enter to keep all > "
    ).strip()
    if excl:
        skip = {int(x) for x in re.split(r"[,\s]+", excl) if x.isdigit()}
        swaps = [m for i, m in enumerate(swaps, 1) if i not in skip]
    if not swaps:
        print("Nothing left to swap — exiting."); sys.exit(0)
    if input(f"\nOverwrite {len(swaps)} file(s)? [y/N] ").lower() not in {"y","yes"}:
        print("Aborted."); sys.exit(0)
    return swaps

def execute(swaps: list[dict]):
    with open("swap_log.csv", "w", newline="") as fcsv:
        w = csv.writer(fcsv)
        w.writerow(["src", "dest", "backup"])
        for m in swaps:
            src = m["src"]
            tgt = m["tgt"]
            if not tgt:
                print(f"⚠️  No existing match for {src.name} (skipped)"); continue
            bak = tgt.with_suffix(tgt.suffix + ".bak")
            if not bak.exists():
                shutil.copy2(tgt, bak)
            shutil.copy2(src, tgt)
            print(f"✔ {src.relative_to(ROOT)}  →  {tgt.relative_to(ROOT)}")
            w.writerow([src.relative_to(ROOT), tgt.relative_to(ROOT), bak.relative_to(ROOT)])
    print("\nLog written to swap_log.csv")

def main():
    sources = gather_sources()
    if not sources:
        print(f"No {EXT} files under {WEAPONS_DIR}"); return
    swaps = []
    for src in sources:
        base = src.name          # basename with extension
        tgt  = find_target(base)
        swaps.append({"base": base, "src": src, "tgt": tgt})
    swaps = [m for m in swaps if m["tgt"]]   # keep only matches
    if not swaps:
        print("No matching filenames in sfx_weapons/"); return
    swaps = preview(swaps)
    execute(swaps)

if __name__ == "__main__":
    try:
        main()
    except KeyboardInterrupt:
        sys.exit("\nInterrupted.")
