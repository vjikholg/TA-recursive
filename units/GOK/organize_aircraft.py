#!/usr/bin/env python3
import re, shutil
from pathlib import Path

# ─── Configuration ─────────────────────────────────────────────────────────────
BACKUP = False   # True to copy instead of move
SCRIPT_DIR = Path(__file__).parent.resolve()
TARGET_BASE = SCRIPT_DIR.parent / "Aircrafts"

# ─── Regexes ────────────────────────────────────────────────────────────────────
RE_BUILD = re.compile(r'buildoptions\s*=\s*{([^}]+)}', re.I | re.S)
RE_ITEM  = re.compile(r'["\']([^"\']+)["\']')
RE_TIER  = re.compile(r'(?:Tech Level|Produces T)\s*(\d)', re.I)

# ─── Collect moves ──────────────────────────────────────────────────────────────
moves = []
for pattern in ("*ap.lua", "*aap.lua", "*eap.lua"):
    for f in SCRIPT_DIR.glob(pattern):
        txt = f.read_text(errors="ignore")

        # 1) Determine tech tier
        m_t = RE_TIER.search(txt)
        tier = int(m_t.group(1)) if m_t else 1

        # 2) Parse buildoptions
        m_b = RE_BUILD.search(txt)
        if not m_b:
            print(f"[WARN] No buildoptions in {f.name}")
            continue
        builds = RE_ITEM.findall(m_b.group(1))

        # 3) Schedule each unit file for move/copy
        for unit in builds:
            src = SCRIPT_DIR / f"{unit}.lua"
            if not src.exists():
                print(f"[WARN] {unit}.lua not found (needed by {f.name})")
                continue
            dest_dir = TARGET_BASE / f"T{tier}"
            dest_dir.mkdir(parents=True, exist_ok=True)
            dest = dest_dir / src.name
            moves.append((src, dest))

# ─── Preview ───────────────────────────────────────────────────────────────────
print("\nPlanned moves/copys:")
for src, dest in moves:
    print(f"  {src.name} → {dest.relative_to(SCRIPT_DIR.parent)}")

# ─── Confirm & Execute ─────────────────────────────────────────────────────────
resp = input("\nProceed? [y/N] ").strip().lower()
if resp == "y":
    for src, dest in moves:
        if BACKUP:
            shutil.copy2(src, dest)
        else:
            shutil.move(str(src), str(dest))
    print("Done.")
else:
    print("Aborted.")
