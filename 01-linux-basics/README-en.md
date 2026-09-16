# Consolidation TP — Linux Basics

## Objective
Consolidate basic Linux commands before moving on to more advanced topics (permissions, processes, scripting). This TP covers: filesystem navigation, file creation/editing, search, copy/move/delete, and version control with Git.

## What I practiced

**Navigation and directory tree**
Created a folder structure using `mkdir -p` (including brace expansion to create multiple nested folders in one command), then navigated between folders using relative paths (`cd ..`, `cd ../../`). Specifically practiced counting `../` levels to jump directly between two deep folders without going back through the root.

**Files and content**
Created files with `touch`, wrote content using `echo` and `nano`, read content with `cat` and `tail`. Key concept learned: the difference between `>` (overwrites the file) and `>>` (appends to the end) — a classic trap that can wipe out content by mistake.

**Search**
Used `find` with `-name` to search by name pattern, and `-type f` / `-type d` to filter files vs directories. Used `whereis` to locate system binaries.

**File manipulation**
Copying (`cp`), moving/renaming (`mv` — Linux treats both the same way), and deletion with the important distinction between `rmdir` (empty folders only, built-in safety) and `rm -r` (deletes everything, including contents, with no confirmation).

**Command substitution**
Discovered `$(command)` to inject one command's output into another, e.g. `echo $(whoami) > file.txt`. This is a fundamental building block of bash scripting.

**Git**
Tracked the work using `git status`, `git add`, `git commit -m`, `git push`, and reviewed history with `git log --oneline`.

## Challenges encountered
- Initial confusion between `tail 2 file` and `tail -n 2 file` (the `-n` flag is required to specify the number of lines).
- Miscounted `../` levels when navigating between two deep folders — fixed by counting each directory level precisely.

## Files in this folder
- `tp-linux-basics-corrected-en.md` — exercise statements, solutions, and detailed reference notes for each exercise.
- Test folders (`ansible/`, `projects/`, etc.) — practical results from running the commands.

## Next step
Day 2: permissions (`chmod`, `chown`) and process management (`ps`, `top`, `kill`).
