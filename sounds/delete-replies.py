#!/usr/bin/env python3
import argparse
import filecmp
from pathlib import Path
import sys

def main(movement_dir: Path, replies_dir: Path, do_delete: bool):
    if not movement_dir.is_dir() or not replies_dir.is_dir():
        print("Error: both movement_dir and replies_dir must be existing directories.")
        sys.exit(1)

    # Compare the two directories
    dc = filecmp.dircmp(movement_dir, replies_dir)
    common = dc.common_files  # names present in both

    if not common:
        print("No overlapping files found.")
        return

    print("Overlapping files:")
    for name in common:
        f_mov = movement_dir / name
        f_rep = replies_dir   / name
        # verify content matches exactly
        if filecmp.cmp(f_mov, f_rep, shallow=False):
            print("  DUPLICATE →", name)
            if do_delete:
                f_rep.unlink()
                print("    deleted from replies/")
        else:
            print("  SAME NAME but different content →", name)

    print("\nDone.")

if __name__ == "__main__":
    parser = argparse.ArgumentParser(
        description="Delete files in 'replies/' that also exist in 'movement/'"
    )
    parser.add_argument(
        "movement_dir", type=Path,
        help="Path to the movement folder"
    )
    parser.add_argument(
        "replies_dir", type=Path,
        help="Path to the replies folder"
    )
    parser.add_argument(
        "--delete", action="store_true",
        help="Actually delete the overlapping files (default: dry-run)"
    )
    args = parser.parse_args()
    main(args.movement_dir, args.replies_dir, args.delete)
