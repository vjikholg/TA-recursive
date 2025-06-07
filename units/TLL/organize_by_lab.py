#!/usr/bin/env python3
"""
move_buildoptions.py

Move the .lua definition files listed in the buildoptions table of a given
unit file to a chosen destination folder.

Author: 2025 • MIT Licence
"""
from __future__ import annotations
from pathlib import Path
import re, sys, shutil, csv

# ───── regex helpers ─────────────────────────────────────────────────────────
RE_BUILDLIST = re.compile(r'buildoptions\s*=\s*{([^}]+)}', re.I | re.S)
RE_IN_STRS   = re.compile(r'["\']([^"\']+)["\']')

def parse_buildoptions(text: str) -> list[str]:
    """Return unit names (strings) inside the first buildoptions = { … }."""
    if not (m := RE_BUILDLIST.search(text)):
        return []
    body = m.group(1)
    return RE_IN_STRS.findall(body)

# ───── moving logic ──────────────────────────────────────────────────────────
def move_files(unit_names: list[str], src_root: Path, dest_root: Path):
    moves = []
    for name in unit_names:
        matches = list(src_root.rglob(name + ".lua"))
        if not matches:
            print(f"⚠️  {name}.lua not found in {src_root}")
            continue
        src = matches[0]          # take first match
        dest = dest_root / src.name
        moves.append((src, dest))

    if not moves:
        print("Nothing to move."); return

    # preview
    print("\nPlanned moves:\n")
    for i, (src, dest) in enumerate(moves, 1):
        print(f"{i:>3}. {src}  →  {dest}")
    excl_raw = input("\nNumbers to EXCLUDE (space/comma) or Enter to keep all > ").strip()
    if excl_raw:
        skip = {int(x) for x in re.split(r"[,\s]+", excl_raw) if x.isdigit()}
        moves = [m for i, m in enumerate(moves, 1) if i not in skip]
    if not moves:
        print("Nothing left."); return
    if input(f"\nProceed with {len(moves)} moves? [y/N] ").lower() not in {"y","yes"}:
        print("Aborted."); return

    dest_root.mkdir(parents=True, exist_ok=True)
    with open("buildoption_move_log.csv", "w", newline="") as fcsv:
        w = csv.writer(fcsv)
        w.writerow(["src", "dest", "backup?"])
        for src, dest in moves:
            bak = ""
            if dest.exists():
                bak = dest.with_suffix(".bak")
                shutil.move(dest, bak)
            shutil.move(src, dest)
            w.writerow([src, dest, bak])
            print("✔", dest)

# ───── entry-point ───────────────────────────────────────────────────────────
def main():
    if len(sys.argv) < 3:
        print("Usage: python move_buildoptions.py <unit.lua> <dest_folder> "
              "[--units-root path]")
        sys.exit(1)

    unit_file  = Path(sys.argv[1]).resolve()
    dest_dir   = Path(sys.argv[2]).resolve()
    units_root = Path(sys.argv[sys.argv.index("--units-root")+1]).resolve() \
                 if "--units-root" in sys.argv else unit_file.parent.parent

    text = unit_file.read_text(errors="ignore")
    names = parse_buildoptions(text)
    if not names:
        print("No buildoptions found in", unit_file)
        return

    move_files(names, units_root, dest_dir)

if __name__ == "__main__":
    main()