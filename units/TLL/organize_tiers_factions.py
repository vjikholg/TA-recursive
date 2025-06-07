#!/usr/bin/env python3
"""
organise_tiers_faction.py

• Run from inside a faction’s units/ sub-folder (e.g. units/TLL).
• Tags mobile units (Kbot, Vehicle, Hover, Aircraft, Ships) into T1/…/T4,
  plus Prototype / Aeroship, then moves them into a ../tiered/ tree.
• Factories / defenses (static buildings) are *parsed* but *not moved*;
  their buildoptions inherit the lab’s tier.
• Hovercraft T1 & T2 supported.

Interactive preview → exclude rows → confirm.  Log written to tier_move_log.csv
"""

from __future__ import annotations
from pathlib import Path
import re, csv, sys, shutil
from collections import defaultdict

# ─── config ──────────────────────────────────────────────────────────────────
BASE_DIR  = Path(sys.argv[1]) if len(sys.argv) > 1 else Path.cwd()
UNITS_DIR = BASE_DIR.resolve()
DEST_ROOT = UNITS_DIR.parent / "tiered"     # change to UNITS_DIR for in-place
BACKUP    = False                           # True = copy; False = move

# ─── regex helpers ───────────────────────────────────────────────────────────
STR = lambda k: re.compile(rf'{k}\s*=\s*["\']([^"\']+)["\']', re.I)
RE_NAME        = STR("name")
RE_DESC        = STR("description")
RE_UNITNAME    = STR("unitname")
RE_ICONTYPE    = STR("icontype")
RE_MOVECLASS   = STR("movementclass")
RE_BUILDLIST   = re.compile(r'buildoptions\s*=\s*{([^}]+)}', re.I | re.S)
RE_IN_BRACES   = re.compile(r'["\']([^"\']+)["\']')

def tier_from_desc(desc: str) -> str | None:
    for pat in (r"tech level\s*([1-4])", r"produces\s*T\s*([1-4])"):
        if m := re.search(pat, desc, re.I):
            return m.group(1)
    return None

# ─── tag decision ────────────────────────────────────────────────────────────
def tag_unit(info) -> str | None:
    name = info["name"].lower()
    desc = info["desc"].lower()
    tier = tier_from_desc(desc)

    if "experimental gantry" in name or "prototype" in name:
        return "Prototype"
    if "aeroship" in name:
        return "Aeroship"

    if "hover" in name and tier in ("1", "2"):
        return f"Hover/T{tier}"

    if "lab" in name or "plant" in name or "platform" in name:
        if "kbot" in name:     return f"Kbot/T{tier or '1'}"
        if "vehicle" in name:  return f"Vehicle/T{tier or '1'}"
        if "hover"   in name:  return f"Hover/T{tier or '1'}"
        if "aircraft" in name: return f"Aircraft/T{tier or '1'}"
    if "aircraft" in name and tier:
        return f"Aircraft/T{tier}"
    if "shipyard" in name:
        return f"Ships/T{tier or '1'}"
    return None

# ─── harvest metadata ────────────────────────────────────────────────────────
units = {}   # unitname → info

for lua in UNITS_DIR.rglob("*.lua"):
    txt   = lua.read_text(errors="ignore")
    name  = (m := RE_NAME.search(txt))        and m.group(1) or ""
    desc  = (m := RE_DESC.search(txt))        and m.group(1) or ""
    uname = (m := RE_UNITNAME.search(txt))    and m.group(1) or lua.stem
    icon  = (m := RE_ICONTYPE.search(txt))    and m.group(1).lower() or ""
    mcls  = (m := RE_MOVECLASS.search(txt))   and m.group(1).strip() or ""

    builds = []
    if (bm := RE_BUILDLIST.search(txt)):
        builds = RE_IN_BRACES.findall(bm.group(1))

    is_static = (icon == "building") or (not mcls) or mcls.upper() == "BUILDING"

    units[uname] = dict(
        path   = lua,
        name   = name,
        desc   = desc,
        builds = builds,
        tag    = None,
        static = is_static,
    )

# ─── explicit tags for mobiles / labs / hover labs etc. ──────────────────────
for u in units.values():
    u["tag"] = tag_unit(u)

# ─── inherit tags via buildoptions (only from labs/shipyards with a tag) ─────
for u in units.values():
    if not u["tag"]:
        continue
    for prod in u["builds"]:
        if prod in units and not units[prod]["tag"]:
            units[prod]["tag"] = u["tag"]

# ─── build move list (skip static) ────────────────────────────────────────────
moves = []
for u in units.values():
    if u["static"] or not u["tag"]:
        continue
    dest = DEST_ROOT / u["tag"] / u["path"].name
    moves.append({
        "src" : u["path"],
        "dest": dest,
        "tag" : u["tag"],
        "name": u["name"],
        "desc": u["desc"],

        })

# ─── interactive preview ─────────────────────────────────────────────────────
print(f"\nPlanned moves from {UNITS_DIR.relative_to(BASE_DIR.parent)}\n")
for i, m in enumerate(moves, 1):
    src_rel = m['src'].relative_to(UNITS_DIR.parent)
    dst_rel = m['dest'].relative_to(DEST_ROOT.parent)

    print(f"{i:>3}. {m['name']:<25} | {m['desc']:<40} "
          f"→  {dst_rel}  ({m['tag']})")
    
    # print(f"{i:>3}. {m['src'].relative_to(UNITS_DIR.parent)}  →  "
    #      f"{m['dest'].relative_to(DEST_ROOT.parent)}  ({m['tag']})")

skip_raw = input("\nNumbers to EXCLUDE (space/comma) or Enter to keep all > ").strip()
if skip_raw:
    skip = {int(x) for x in re.split(r"[,\s]+", skip_raw) if x.isdigit()}
    moves = [m for i, m in enumerate(moves, 1) if i not in skip]

if not moves:
    print("Nothing left to move — exiting."); sys.exit(0)

if input(f"\nProceed with {len(moves)} moves? [y/N] ").lower() not in {"y","yes"}:
    print("Aborted."); sys.exit(0)

# ─── move / copy and log ─────────────────────────────────────────────────────
with open("tier_move_log.csv", "w", newline="") as fcsv:
    w = csv.writer(fcsv)
    w.writerow(["src", "dest", "tag"])
    for m in moves:
        m["dest"].parent.mkdir(parents=True, exist_ok=True)
        if BACKUP and not m["dest"].exists():
            shutil.copy2(m["src"], m["dest"])
        else:
            shutil.move(m["src"], m["dest"])
        w.writerow([m["src"], m["dest"], m["tag"]])
        print("✔", m["dest"].relative_to(DEST_ROOT.parent))

print("\nDone. Log written to tier_move_log.csv")
