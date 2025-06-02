#!/usr/bin/env python3
"""
move_if_contains.py  — v3

• Walk the current directory (recursively by default) for *.lua.
• If a file’s text contains ANY string in SEARCH_TERMS → mark it.
• Show a numbered list:
      idx. filename   →   name=…   –   relative/path/to/file.lua
• Let you type numbers (e.g. 2 7 9) to EXCLUDE specific files.
• Ask for Y/N once more, then move the remaining files to DESTINATION.

Run:  python move_if_contains.py
"""

from __future__ import annotations

import re
import shutil
import sys
from pathlib import Path

# ───── USER SETTINGS ──────────────────────────────────────────────────────────
SEARCH_TERMS = [

]

DESTINATION = "../matched_lua_files"
RECURSIVE = True
# ──────────────────────────────────────────────────────────────────────────────

# Regex to pull   name = "UnitName"   or   name='UnitName'
NAME_RE = re.compile(r'\bname\s*=\s*["\']([^"\']+)["\']', re.IGNORECASE)


def file_matches(text: str) -> bool:
    """True if file contains ANY of the search terms."""
    return any(term in text for term in SEARCH_TERMS)


def extract_name(text: str) -> str | None:
    """Return first name= value, or None."""
    m = NAME_RE.search(text)
    return m.group(1) if m else None


def collect_candidates(root: Path) -> list[dict]:
    """Gather matching Lua files as [{'path': Path, 'name': str|None}, …]."""
    g = root.rglob if RECURSIVE else root.glob
    out = []
    for lua in g("*.lua"):
        try:
            txt = lua.read_text(errors="ignore")
        except Exception as err:
            print(f"⚠️  Skipped {lua} – {err}")
            continue

        if file_matches(txt):
            out.append({"path": lua, "name": extract_name(txt)})
    return out


def prompt_exclusions(matches: list[dict]) -> list[dict]:
    """Display table & let user exclude by index numbers."""
    print("\nMatched files:\n")
    for idx, item in enumerate(matches, 1):
        rel = item["path"].relative_to(Path.cwd())
        name_disp = item["name"] or "(name not found)"
        print(f"{idx:>2}. {item['path'].name:<25} → {name_disp:<30} – {rel}")

    excl_raw = input(
        "\nType index numbers to *exclude* (space/comma-separated) "
        "or just press Enter to keep all.  "
        "Type 'q' to cancel.\n> "
    ).strip().lower()

    if excl_raw in {"q", "quit"}:
        print("Aborted – no files moved.")
        sys.exit(0)

    if not excl_raw:
        return matches  # nothing excluded

    # Parse numbers
    tokens = re.split(r"[,\s]+", excl_raw)
    try:
        to_skip = {int(t) for t in tokens if t}
    except ValueError:
        print("❌  Invalid input – expected numbers (e.g. 2 5 7).")
        return prompt_exclusions(matches)

    filtered = [
        item for idx, item in enumerate(matches, 1) if idx not in to_skip
    ]
    print(
        f"\nWill move {len(filtered)} file(s); "
        f"skipping {len(matches) - len(filtered)}.\n"
    )
    return filtered


def confirm(prompt: str = "Proceed? [y/N] ") -> bool:
    """Return True on affirmative answer."""
    return input(prompt).strip().lower() in {"y", "yes"}


def move_files(matches: list[dict], dest_dir: Path) -> None:
    """Move files, avoiding collisions by appending _1, _2, …"""
    dest_dir.mkdir(parents=True, exist_ok=True)
    moved = 0
    for item in matches:
        src = item["path"]
        target = dest_dir / src.name
        counter = 1
        while target.exists():
            target = dest_dir / f"{src.stem}_{counter}{src.suffix}"
            counter += 1
        shutil.move(str(src), str(target))
        moved += 1
    print(f"✅  Moved {moved} file{'s' if moved != 1 else ''}.")


def main() -> None:
    root = Path.cwd()
    dest = Path(DESTINATION).expanduser().resolve()
    matches = collect_candidates(root)

    if not matches:
        print("No files matched – nothing to do.")
        return

    matches = prompt_exclusions(matches)
    if not matches:
        print("Nothing left to move – exiting.")
        return

    if confirm():
        move_files(matches, dest)
    else:
        print("Aborted – no files moved.")


if __name__ == "__main__":
    try:
        main()
    except KeyboardInterrupt:
        sys.exit("\nInterrupted.")
