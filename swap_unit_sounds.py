#!/usr/bin/env python3
"""
swap_unit_sounds.py
───────────────────
Usage:
    python swap_unit_sounds.py path/to/units/TALON/Buildings

• Scans only *.lua files in the given folder (no sub-dirs)
• Replaces the six sound-table items with NEW[...] strings below
• Makes *.bak the first time a file is touched
"""

from __future__ import annotations
from pathlib import Path
import re, shutil, sys, textwrap

# ─── 1.  new samples you want ------------------------------------------------
NEW = {
    "build"   : "conalt-small",
    "repair"  : "conalt-small",
    "working" : "conalt-small",
    "cant"    : "cantdo4",
    "ok"      : "cor-hov-large-ok",
    "select"  : "cor-hov-large-sel",
}

# ─── 2.  regex helpers -------------------------------------------------------
CI = re.I
RE_SOUNDS_BLOCK = re.compile(r'\bsounds\s*=\s*{', CI)
# single-string form:    key = "sample"
SINGLE = lambda k: re.compile(rf'({k}\s*=\s*)(["\'])([^"\']+)(["\'])', CI)
# list form:  key = { "a","b" ... }
LIST   = lambda k: re.compile(rf'({k}\s*=\s*{{)([^}}]+)(}})', CI | re.S)

def replace_sound_block(text: str, key: str, new_sample: str) -> tuple[str,bool,str,str]:
    """return (new_text, changed?, old_sample, new_sample)"""
    pat_single = SINGLE(key)
    if m := pat_single.search(text):
        old = m.group(3)
        return pat_single.sub(rf'\1\2{new_sample}\4', text, 1), True, old, new_sample

    pat_list = LIST(key)
    if m := pat_list.search(text):
        # replace every quoted item inside the list with the new sample (keep commas)
        body = m.group(2)
        new_body = re.sub(r'["\'][^"\']+["\']', f'"{new_sample}"', body)
        return text[:m.start(2)] + new_body + text[m.end(2):], True, body.strip(), new_sample
    return text, False, "", ""

# ─── 3.  main workflow -------------------------------------------------------
def process_file(p: Path) -> tuple[bool,list[str],str,str]:
    src = p.read_text(errors="ignore")
    if "sounds" not in src:
        return False, [], "", ""         # nothing to do
    changed_keys,olds,news = [],[],[]
    new_text = src
    for k,ns in NEW.items():
        new_text, changed, old, new = replace_sound_block(new_text, k, ns)
        if changed:
            changed_keys.append(k)
            olds.append(old)
            news.append(new)
    if not changed_keys:
        return False, [], "", ""
    return True, changed_keys, new_text, "\n".join(f"{k}: {o} → {NEW[k]}" for k,o in zip(changed_keys,olds))

# ─── 4.  preview + confirm ---------------------------------------------------
def main():
    if len(sys.argv) != 2:
        print("give exactly one folder path"); sys.exit(1)
    folder = Path(sys.argv[1]).resolve()
    if not folder.is_dir():
        print("not a folder"); sys.exit(1)

    tasks=[]
    for f in folder.glob("*.lua"):
        ok, keys, new_text, diff = process_file(f)
        if ok:
            tasks.append(dict(path=f, keys=keys, text=new_text, diff=diff))

    if not tasks:
        print("no replacements needed"); return

    print("\nPlanned changes:\n")
    for i,t in enumerate(tasks,1):
        print(f"{i:>2}. {t['path'].name:<25}  ->  {', '.join(t['keys'])}")
        print(textwrap.indent(t['diff'], "      "))
    skip=input("\nnumbers to EXCLUDE (space/comma) or Enter to keep all > ").strip()
    if skip:
        ex={int(x) for x in re.split(r"[,\s]+",skip) if x.isdigit()}
        tasks=[t for i,t in enumerate(tasks,1) if i not in ex]
    if not tasks:
        print("nothing left"); return
    if input(f"\nwrite {len(tasks)} file(s)? [y/N] ").lower()!="y":
        print("aborted"); return

    for t in tasks:
        bak=t["path"].with_suffix(".bak")
        if not bak.exists():
            shutil.copy2(t["path"], bak)
        t["path"].write_text(t["text"])
        print("✔", t["path"].name)
    print("\ndone – backups are *.bak")

if __name__ == "__main__":
    main()
