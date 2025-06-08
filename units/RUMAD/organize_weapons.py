#!/usr/bin/env python3
"""
run from inside  units/TLL  (or units/ARM, etc.)

  cd games/TA/units/TLL
  python landdef_move.py
"""
from pathlib import Path
import re, shutil, csv, sys

CUR_DIR   = Path.cwd()                     # units/TLL
UNITS_DIR = CUR_DIR                        # surface only
DEST_DIR  = CUR_DIR.parent / "Buildings/LandDefenceOffence"
DEST_DIR.mkdir(parents=True, exist_ok=True)

# ── regex helpers (case-insensitive) ─────────────────────────────────────────
CI = re.I
RE_ICON       = re.compile(r'\bicon\s*type\s*=\s*["\']building["\']', CI)
RE_WEAPONDEFS = re.compile(r'\bweapondefs\b', CI)
RE_IGNORE     = re.compile(r'\b(energymake|metalmake|extractsmetal)\b', CI)
RE_NAME       = re.compile(r'\bname\s*=\s*["\']([^"\']+)["\']', CI)
RE_DESC       = re.compile(r'\bdescription\s*=\s*["\']([^"\']+)["\']', CI)

cands = []
for lua in UNITS_DIR.glob("*.lua"):          # <-- surface only
    txt = lua.read_text(errors="ignore")
    if RE_ICON.search(txt) and RE_WEAPONDEFS.search(txt) and not RE_IGNORE.search(txt):
        name = (m := RE_NAME.search(txt)) and m.group(1) or "(no name)"
        desc = (m := RE_DESC.search(txt)) and m.group(1) or "(no desc)"
        cands.append(dict(src=lua, name=name, desc=desc))

if not cands:
    print("No matching land-defence units found."); sys.exit(0)

print("\nLand-defence candidates:\n")
for i,c in enumerate(cands,1):
    print(f"{i:>3}. {c['name']:<28} | {c['desc']:<45} | {c['src'].name}")

skip = input("\nNumbers to EXCLUDE (space/comma) or Enter to move all > ").strip()
if skip:
    excl = {int(x) for x in re.split(r"[,\s]+", skip) if x.isdigit()}
    cands = [c for i,c in enumerate(cands,1) if i not in excl]

if not cands:
    print("Nothing left to move."); sys.exit(0)

if input(f"\nMove {len(cands)} files to {DEST_DIR.relative_to(CUR_DIR.parent)} ? [y/N] "
         ).lower() not in {"y","yes"}:
    print("Aborted."); sys.exit(0)

with open("landdef_move_log.csv", "w", newline="") as fcsv:
    w = csv.writer(fcsv); w.writerow(["src","dest","backup"])
    for c in cands:
        dst = DEST_DIR / c['src'].name
        bak = ""
        if dst.exists():
            bak = dst.with_suffix(dst.suffix + ".bak")
            shutil.move(dst, bak)
        shutil.move(c['src'], dst)
        w.writerow([c['src'].relative_to(CUR_DIR.parent.parent),
                    dst.relative_to(CUR_DIR.parent.parent),
                    bak])
        print("✔", dst.relative_to(CUR_DIR.parent))

print("\nDone. Log saved to landdef_move_log.csv")
