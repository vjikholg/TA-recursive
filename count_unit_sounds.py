#!/usr/bin/env python3
"""
count_unit_sounds.py

Usage:
    python count_unit_sounds.py path/to/units/

Outputs:
    • Console tables sorted by descending hit-count
    • sound_count_report.csv  (key, count, context)
"""

import sys, re, csv
from pathlib import Path
from collections import Counter, defaultdict

if len(sys.argv) < 2:
    print("Usage: python count_unit_sounds.py <units_folder>")
    sys.exit(1)

UNITS_DIR = Path(sys.argv[1]).resolve()
if not UNITS_DIR.is_dir():
    print("Folder not found:", UNITS_DIR)
    sys.exit(1)

# ─── regex helpers ───────────────────────────────────────────────────────────
QUOTE      = r'["\']([^"\']+)["\']'
RE_SOUNDS  = re.compile(r'\bsounds\s*=\s*{(.*?)}', re.I | re.S)
RE_WEAPDEF = re.compile(r'\bweapondefs\s*=\s*{(.*?)}', re.I | re.S)
RE_W_SND   = re.compile(r'\b(soundhitdry|soundhitwet|soundstart)\s*=\s*'+QUOTE,
                        re.I)

# ─── counters ────────────────────────────────────────────────────────────────
overall   = Counter()          # any ref in sounds{}
by_tag    = defaultdict(Counter)  # {'soundhitdry': Counter(), ...}

# ─── scan every unit file ────────────────────────────────────────────────────
for lua in UNITS_DIR.rglob("*.lua"):
    text = lua.read_text(errors="ignore")

    # 1. sounds = { ... }
    for block in RE_SOUNDS.findall(text):
        for f in re.findall(QUOTE, block):
            overall[f] += 1

    # 2. inside weapondefs blocks
    for wblk in RE_WEAPDEF.findall(text):
        for tag, fname in RE_W_SND.findall(wblk):
            overall[fname]      += 1
            by_tag[tag.lower()][fname] += 1

# ─── console report ──────────────────────────────────────────────────────────
def pretty(counter: Counter, title: str):
    if not counter: return
    print(f"\n{title}")
    print("".ljust(50, "─"))
    for k, n in counter.most_common():
        print(f"{n:>4} ×  {k}")

pretty(overall, "ALL REFERENCES (sounds{} + weapon tags)")

for tag in ("soundstart", "soundhitdry", "soundhitwet"):
    pretty(by_tag[tag], f"by weapon tag ─ {tag}")

# ─── CSV export ──────────────────────────────────────────────────────────────
with open("sound_count_report.csv", "w", newline="") as f:
    w = csv.writer(f)
    w.writerow(["sound_name", "count", "context"])
    for snd, cnt in overall.most_common():
        w.writerow([snd, cnt, "overall"])
    for tag, ctr in by_tag.items():
        for snd, cnt in ctr.most_common():
            w.writerow([snd, cnt, tag])

print("\nReport saved to sound_count_report.csv")
