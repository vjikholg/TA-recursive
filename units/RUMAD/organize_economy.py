#!/usr/bin/env python3
"""
scan_landeco.py
────────────────
Scan *units/TALON/Buildings/LandEconomy/*.lua* for
  iconType = "building"
AND any of
  extractsmetal  energymake  energystorage  metalstorage

Preview → exclude → move to  .../checked/

Run:
    python scan_landeco.py          # from repo root
"""

from __future__ import annotations
from pathlib import Path
import re, csv, shutil, sys

# ─── paths ───────────────────────────────────────────────────────────────────
ROOT       = Path.cwd()
SRC_DIR    = ROOT 
DEST_DIR   = SRC_DIR / "Buildings/LandEconomy"
DEST_DIR.mkdir(parents=True, exist_ok=True)
BACKUP     = True          # keep .bak if dest already exists

# ─── regex helpers (case-insensitive) ────────────────────────────────────────
CI  = re.I
RE_ICON   = re.compile(r'\bicon\s*type\s*=\s*["\']building["\']', CI)
RE_NAME   = re.compile(r'\bname\s*=\s*["\']([^"\']+)["\']', CI)
RE_DESC   = re.compile(r'\bdescription\s*=\s*["\']([^"\']+)["\']', CI)

CI  = re.I

# 1) your old Land-Eco keys
BASE_KEYS = ["extractsmetal", "energymake", "energystorage", "metalstorage"]

# 2) new categories we want to detect
EXTRA_KEYS = {
    # metal-makers “convert … Energy to Metal”
    "converts":     re.compile(r'\bconvert\w*\b', CI),
    # solar/wind/tidal generators
    "solar":        re.compile(r'\bsolar\b', CI),
    "wind":         re.compile(r'\bwind\b', CI),
    "tidal":        re.compile(r'\btidal\b', CI),
}

# merge them
RE_KEYS = { **{k: re.compile(rf'\b{k}\b', CI) for k in BASE_KEYS},
            **EXTRA_KEYS }

# ─── harvest candidates ──────────────────────────────────────────────────────
cands = []
for lua in SRC_DIR.glob("*.lua"):        # surface only
    txt = lua.read_text(errors="ignore")
    if not RE_ICON.search(txt):
        continue

    present = [k for k,rx in RE_KEYS.items() if rx.search(txt)]
    if not present:
        continue

    name = (m := RE_NAME.search(txt)) and m.group(1) or "(no name)"
    desc = (m := RE_DESC.search(txt)) and m.group(1) or "(no desc)"

    cands.append(dict(src=lua, name=name, desc=desc, keys=",".join(present)))

if not cands:
    print("No matching Land-Economy buildings found."); sys.exit(0)

# ─── preview ─────────────────────────────────────────────────────────────────
print("\nLand-Economy buildings to move:\n")
for i,c in enumerate(cands,1):
    print(f"{i:>3}. {c['name']:<25} | {c['desc']:<40} | "
          f"{c['keys']:<30} | {c['src'].name}")

skip = input("\nNumbers to EXCLUDE (space/comma) or Enter to move all > ").strip()
if skip:
    excl = {int(x) for x in re.split(r"[,\s]+", skip) if x.isdigit()}
    cands = [c for i,c in enumerate(cands,1) if i not in excl]

if not cands:
    print("Nothing left to move."); sys.exit(0)

if input(f"\nProceed with {len(cands)} moves? [y/N] ").lower() not in {"y","yes"}:
    print("Aborted."); sys.exit(0)

# ─── move / copy + log ───────────────────────────────────────────────────────
with open("landeco_move_log.csv", "w", newline="") as fcsv:
    w = csv.writer(fcsv)
    w.writerow(["src", "dest", "keys"])
    for c in cands:
        dst = DEST_DIR / c['src'].name
        if BACKUP and dst.exists():
            shutil.move(dst, dst.with_suffix(".bak"))
        shutil.move(c['src'], dst)
        w.writerow([c['src'].relative_to(ROOT), dst.relative_to(ROOT), c['keys']])
        print("✔", dst.relative_to(ROOT))

print("\nDone. Log written to landeco_move_log.csv")
