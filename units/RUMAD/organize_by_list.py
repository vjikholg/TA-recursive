#!/usr/bin/env python3
"""
move_units.py  –  move a list of unit .lua files to one directory.

Examples
--------
python move_units.py units/TLL/tll_laser.lua gok_abyss.lua  tiered/Hover/T2/
python move_units.py --list my_units.txt  tiered/Kbot/T1/  --units-root units

Author: 2025 • MIT Licence
"""
from __future__ import annotations
from pathlib import Path
import sys, csv, shutil, re, argparse

BACKUP = True          # False → overwrite without .bak; True → keep backup

def parse_args():
    ap = argparse.ArgumentParser()
    ap.add_argument("files_or_dest", nargs="+",
                    help="List of unit files followed by destination folder")
    ap.add_argument("--list", help="Text file with one unit filename per line")
    ap.add_argument("--units-root", default=".",
                    help="Root folder under which to resolve filenames")
    return ap.parse_args()

def gather_sources(args, dest_index: int) -> list[Path]:
    sources = [Path(p) for p in args.files_or_dest[:dest_index]]
    if args.list:
        with open(args.list) as f:
            sources += [Path(l.strip()) for l in f if l.strip()]
    return sources

def preview_and_exclude(pairs):
    print("\nPlanned moves:\n")
    for i,(src,dst) in enumerate(pairs,1):
        print(f"{i:>3}. {src}  →  {dst}")
    excl = input("\nNumbers to EXCLUDE (space/comma) or Enter to keep all > ").strip()
    if excl:
        skip={int(x) for x in re.split(r"[,\s]+",excl) if x.isdigit()}
        pairs=[p for i,p in enumerate(pairs,1) if i not in skip]
    if not pairs:
        print("Nothing left.") ; sys.exit(0)
    if input(f"\nProceed with {len(pairs)} moves? [y/N] ").lower() not in {"y","yes"}:
        print("Aborted."); sys.exit(0)
    return pairs

def main():
    args = parse_args()
    dest = Path(args.files_or_dest[-1]).resolve()
    dest.mkdir(parents=True, exist_ok=True)

    units_root = Path(args.units_root).resolve()
    dest_index = len(args.files_or_dest) - 1
    src_candidates = gather_sources(args, dest_index)

    # resolve each candidate against units_root (recursive search)
    pairs=[]
    for cand in src_candidates:
        hits=list(units_root.rglob(cand.name if not cand.is_absolute() else cand.name))
        if not hits:
            print(f"⚠️  {cand} not found under {units_root}")
            continue
        src = hits[0]
        pairs.append((src, dest / src.name))

    if not pairs:
        print("No valid sources."); return

    pairs = preview_and_exclude(pairs)

    with open("unit_move_log.csv","w",newline="") as f:
        w=csv.writer(f); w.writerow(["src","dest","backup"])
        for src,dst in pairs:
            bak=""
            if BACKUP and dst.exists():
                bak = dst.with_suffix(".bak")
                shutil.move(dst, bak)
            shutil.move(src, dst)
            w.writerow([src.relative_to(units_root.parent),
                        dst.relative_to(dest.parent), bak])
            print("✔", dst.relative_to(dest.parent))
    print("\nLog written to unit_move_log.csv")

if __name__ == "__main__":
    main()
