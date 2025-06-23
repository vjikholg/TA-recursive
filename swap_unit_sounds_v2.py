#!/usr/bin/env python3
"""
swap_sounds_by_category.py
──────────────────────────
Run:  python swap_sounds_by_category.py units/TLL

• Tags each unit (like your tier organiser) and looks up MAP[tag]
• Replaces 'build repair working cant ok select' inside sounds = {…}
  with the strings you set in MAP
• Interactive preview  → exclude → confirm
• Writes .bak once per file
"""
from __future__ import annotations
from pathlib import Path
import re, csv, shutil, sys, textwrap

# ───── 1. CONFIG – edit this dict only ───────────────────────────────────────
MAP = {
    "Aircraft/T1": dict(build="conalt-small",   repair="conalt-small",
                        working="conalt-small",  cant="cantdo4",
                        ok="arm-air-small-ok",        select="arm-air-small-sel"),

    "Aircraft/T2": dict(build="conalt-small",   repair="conalt-small",
                        working="conalt-small",  cant="cantdo4",
                        ok="arm-air-medium-ok",        select="arm-air-medium-sel"),

    "Aircraft/T3" :dict(build="conalt-medium",   repair="conalt-small",
                        working="conalt-small",  cant="cantdo4",
                        ok="arm-air-large-ok",        select="arm-air-large-sel"),

    "Airships"   : dict(build="conalt-medium",   repair="conalt-small",
                        working="conalt-small",  cant="cantdo4",
                        ok="arm-air-large-ok",        select="arm-air-large-sel",
                        arrived="tllvtolstop3"),

    "Bots/T1"    : dict(build="conalt-small",   repair="conalt-small",
                        working="conalt-small",  cant="cantdo4",
                        ok="leg-bot-tiny-ok",        select="leg-bot-tiny-sel"),

    "Bots/T2"    : dict(build="conalt-small",   repair="conalt-small",
                        working="conalt-small",  cant="cantdo4",
                        ok="leg-bot-small-ok",        select="leg-bot-small-sel"),

    "Bots/T3"    : dict(build="conalt-medium",   repair="conalt-small",
                        working="conalt-small",  cant="cantdo4",
                        ok="leg-bot-medium-ok",        select="leg-bot-medium-sel"),

    "Vehicles/T1": dict(build="conalt-medium",   repair="conalt-small",
                        working="conalt-small",  cant="cantdo4",
                        ok="leg-veh-tiny-ok",        select="leg-veh-tiny-sel"),

    "Vehicles/T2": dict(build="conalt-medium",   repair="conalt-small",
                        working="conalt-small",  cant="cantdo4",
                        ok="leg-veh-small-ok",        select="leg-veh-small-sel"),

    "Vehicles/T3": dict(build="conalt-medium",   repair="conalt-small",
                        working="conalt-small",  cant="cantdo4",
                        ok="cor-tnk-large-ok",        select="cor-tnk-large-sel"),

    "Hovercrafts/T1"   : dict(build="conalt-medium",   repair="conalt-small",
                        working="conalt-small",  cant="cantdo4",
                        ok="cor-hov-small-ok",        select="cor-hov-small-sel"),

    "Hovercrafts/T2"   : dict(build="conalt-medium",   repair="conalt-small",
                        working="conalt-small",  cant="cantdo4",
                        ok="cor-hov-medium-ok",        select="cor-hov-medium-sel"),

    "Turtles"   : dict(build="conalt-small",   repair="conalt-small",
                        working="conalt-small",  cant="cantdo4",
                        ok="leg-bot-small-ok",        select="leg-bot-small-sel"),

    "Ships/T1"   : dict(build="conalt-small",   repair="conalt-small",
                        working="conalt-small",  cant="cantdo4",
                        ok="arm-shp-small-ok",        select="arm-shp-small-sel"),

    "Ships/T2"   : dict(build="conalt-small",   repair="conalt-small",
                        working="conalt-small",  cant="cantdo4",
                        ok="arm-shp-medium-ok",        select="arm-shp-medium-sel"),

    "Ships/T3"   : dict(build="conalt-small",   repair="conalt-small",
                        working="conalt-small",  cant="cantdo4",
                        ok="arm-shp-large-ok",        select="arm-shp-large-sel"),
                        
    "Ships/T4"   : dict(build="conalt-small",   repair="conalt-small",
                        working="conalt-small",  cant="cantdo4",
                        ok="arm-shp-huge-ok",        select="arm-shp-huge-sel"),
    # ...add more...
}
# ─────────────────────────────────────────────────────────────────────────────

CI = re.I
STR = lambda k: re.compile(rf'{k}\s*=\s*["\']([^"\']+)["\']', CI)
RE_NAME,RE_DESC = STR("name"), STR("description")
RE_ICONTYPE,RE_MOVECLASS = STR("icontype"), STR("movementclass")
RE_BUILDLIST = re.compile(r'buildoptions\s*=\s*{([^}]+)}', CI|re.S)
RE_IN  = re.compile(r'["\']([^"\']+)["\']')
RE_SOUNDS_BLOCK = re.compile(r'\bsounds\s*=\s*{', CI)

# keys we care about
KEYS = sorted({k for cat in MAP.values() for k in cat})
CI   = re.I
SINGLE = {k: re.compile(rf'({k}\s*=\s*)(["\'])([^"\']+)(["\'])', CI) for k in KEYS}
LIST   = {k: re.compile(rf'({k}\s*=\s*{{)([^}}]+)(}})', CI|re.S) for k in KEYS}
RE_SOUNDS = re.compile(r'\bsounds\s*=\s*{', CI)

def replace_key(text, key, sample):
    if key not in SINGLE: return text, False
    if (m:=SINGLE[key].search(text)):
        return SINGLE[key].sub(rf'\1\2{sample}\4', text, 1), True
    if (m:=LIST[key].search(text)):
        body = m.group(2)
        new_body = re.sub(r'["\'][^"\']+["\']', f'"{sample}"', body)
        return text[:m.start(2)]+new_body+text[m.end(2):], True
    return text, False

def category_for(path: Path, root: Path) -> str | None:
    rel = path.relative_to(root)
    parts = rel.parts                      # e.g. ('Aircraft','T2','foo.lua')
    if len(parts) < 2:                     # no sub-folder
        cat = parts[0]                     # 'Airships' etc.
    else:
        # Detect tier sub-folder like T1/T2/T3…
        if re.fullmatch(r'[Tt]\d', parts[1]):
            cat = f"{parts[0]}/T{parts[1][-1]}"
        else:
            cat = parts[0]
    return cat if cat in MAP else None

def process(path: Path, mapping: dict[str,str]):
    txt = path.read_text(errors="ignore")
    if "sounds" not in txt: return None
    new_txt = txt; modified = []
    for k, val in mapping.items():
        new_txt, did = replace_key(new_txt, k, val)
        if did: modified.append(k)
    if modified and new_txt != txt:
        diff = ", ".join(modified)
        return new_txt, diff
    return None

# ───── main workflow ─────────────────────────────────────────────────────────
def main():
    if len(sys.argv)!=2:
        print("usage: python swap_sounds_folder.py units/TLL"); sys.exit(1)
    ROOT = Path(sys.argv[1]).resolve()
    if not ROOT.is_dir():
        print("folder not found"); sys.exit(1)

    tasks=[]
    for lua in ROOT.rglob("*.lua"):
        cat = category_for(lua, ROOT)
        if not cat: continue
        res = process(lua, MAP[cat])
        if res:
            tasks.append(dict(src=lua, new=res[0], keys=res[1], cat=cat))

    if not tasks:
        print("nothing to change"); return

    print("\nPlanned replacements:\n")
    for i,t in enumerate(tasks,1):
        rel = t['src'].relative_to(ROOT.parent)
        print(f"{i:>2}. {rel} | {t['cat']}  [{t['keys']}]")

    skip = input("\nExclude numbers (space/comma) or Enter to keep all > ").strip()
    if skip:
        excl={int(x) for x in re.split(r"[,\s]+", skip) if x.isdigit()}
        tasks=[t for i,t in enumerate(tasks,1) if i not in excl]
    if not tasks: print("nothing left"); return
    if input(f"\nWrite {len(tasks)} file(s)? [y/N] ").lower()!="y": return

    for t in tasks:
        bak = t['src'].with_suffix(".bak")
        if not bak.exists(): shutil.copy2(t['src'], bak)
        t['src'].write_text(t['new'])
        print("✔", t['src'].relative_to(ROOT.parent))
    print("\ndone – backups are *.bak   log: sound_cat_log.csv")

if __name__ == "__main__":
    main()