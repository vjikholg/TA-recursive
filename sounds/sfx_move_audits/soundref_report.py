#!/usr/bin/env python3
"""
sound_reference_report.py
─────────────────────────
Run this script from inside the *sounds/* directory.

It prints and logs:
    soundFileName  →  unit1.lua, unit2.lua, …

Useful to discover which sounds are still referenced after a big re-org.
"""

from __future__ import annotations
from pathlib import Path
import re, csv, sys

# ─── SETTINGS ────────────────────────────────────────────────────────────────
# Limit search to these extensions:
EXTS = [".ogg", ".wav", ".flac", ".WAV"]

# Skip already-organised sub-folders if you like (regex, case-insensitive).
# Example: r"^sfx_"  → ignore everything under sounds/sfx_…
SKIP_SUBFOLDER_PATTERN = r"^sfx_"   # e.g. r"^sfx_" or None for no skipping
# ─────────────────────────────────────────────────────────────────────────────

THIS_DIR  = Path.cwd().resolve()          # sounds/
UNITS_DIR = THIS_DIR.parent / "units"     # ../units

def sound_files() -> list[Path]:
    """Return list of audio files still present under sounds/."""
    if SKIP_SUBFOLDER_PATTERN:
        import re as _re
        skip_re = _re.compile(SKIP_SUBFOLDER_PATTERN, _re.I)
        return [
            p for p in THIS_DIR.rglob("*")
            if p.suffix in EXTS and not skip_re.match(p.relative_to(THIS_DIR).parts[0])
        ]
    else:
        return [p for p in THIS_DIR.rglob("*") if p.suffix in EXTS]

def unit_files() -> list[Path]:
    return list(UNITS_DIR.rglob("*.lua"))

def build_index(sounds: list[Path], units: list[Path]) -> dict[str, list[str]]:
    """
    Return { soundBaseName -> [unitPathRelative, …] }
    Keys have NO extension to match typical usage in unit defs.
    """
    index: dict[str, list[str]] = {p.stem.lower(): [] for p in sounds}
    # Pre-compile regexes for speed
    patterns = {k: re.compile(rf"\b{k}\b", re.I) for k in index}
    for u in units:
        text = u.read_text(errors="ignore")
        for base, pat in patterns.items():
            if pat.search(text):
                index[base].append(str(u.relative_to(UNITS_DIR.parent)))
    return index

def main():
    sounds = sound_files()
    if not sounds:
        print("No sound files found with extensions", EXTS)
        sys.exit(0)

    units = unit_files()
    if not units:
        print("No unit .lua files found under", UNITS_DIR)
        sys.exit(0)

    index = build_index(sounds, units)

    # Console report
    print("\nSound → referenced by unit files")
    print("".ljust(60, "─"))
    for s in sounds:
        key = s.stem.lower()
        refs = index[key]
        rel  = s.relative_to(THIS_DIR)
        rel_s = str(rel)  
        if refs:
            head = ", ".join(refs[:5]) + (" …" if len(refs) > 5 else "")
            print(f"{rel_s:<40}  →  {head}")
        else:
            print(f"{rel_s:<40}  →  (unused)") 

    # CSV log
    with open("sound_reference_report.csv", "w", newline="") as fcsv:
        w = csv.writer(fcsv)
        w.writerow(["sound_file", "referenced_by_unit"])
        for s in sounds:
            key  = s.stem.lower()
            refs = index[key] or ["(unused)"]
            w.writerow([str(s.relative_to(THIS_DIR)), "; ".join(refs)])
    print("\nReport saved to sound_reference_report.csv")

if __name__ == "__main__":
    try:
        main()
    except KeyboardInterrupt:
        sys.exit("\nInterrupted.")
