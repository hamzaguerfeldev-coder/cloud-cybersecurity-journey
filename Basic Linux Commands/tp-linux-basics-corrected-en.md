# Consolidation TP — Linux Basics — Exercises Corrected + Reference Notes

## Reference notes (keep this handy)

### `>` vs `>>` (redirection)
| Symbol | Effect |
|---|---|
| `>` | **Overwrites** the file's content (creates it if it doesn't exist) |
| `>>` | **Appends** to the end of the file (creates it if it doesn't exist) |

```bash
echo "line 1" > file.txt    # file.txt contains: line 1
echo "line 2" > file.txt    # file.txt contains: line 2 (line 1 is lost!)
echo "line 3" >> file.txt   # file.txt contains: line 2 / line 3
```
**Common trap:** using `>` by mistake instead of `>>` and accidentally wiping out previous content.

---

### `rm -r` vs `rmdir`
| Command | Effect |
|---|---|
| `rmdir folder/` | Deletes the folder **only if it's empty**. Built-in safety. |
| `rm -r folder/` | Deletes the folder **and everything inside it**, even if not empty. No confirmation, no trash bin. |

**Why `rmdir` refuses a non-empty folder:** this is intentional, not a bug. It's a safeguard against accidentally deleting data while thinking you're removing "just an empty folder." If `rmdir` accepted everything, one mistyped command could wipe out important files with no warning. `rm -r` exists for cases where you genuinely know what you're doing and want to delete everything at once — hence its much more dangerous nature (no undo).

**Practical rule:** use `rmdir` by default to clean up empty folders; reserve `rm -r` for deliberate, double-checked deletions (always `ls` first to confirm).

---

### `find -type d` vs `find -type f`
| Option | Result |
|---|---|
| `find . -type d` | Lists only **directories** |
| `find . -type f` | Lists only **files** |

Practical use: cleaning up empty directories (`find . -type d -empty`), or searching only config files (`find . -type f -name "*.conf"`).

---

### Command substitution `$(...)`
```bash
echo $(whoami) > whoami.txt
```
Bash runs `whoami` first, captures its output (your username), and inserts it into the `echo` command. This is the foundation of bash automation: capturing one command's output to use in another.

---

### Relative paths — counting `../`
Each `../` moves up **exactly one level**. To navigate between two folders, count the depth precisely instead of guessing:
```
projects/cloud/aws/junior/begin  →  projects/linux/user/deleteuser
```
From `begin`, going back up to `projects` takes 4 levels (`begin→junior→aws→cloud→projects`), so:
```bash
cd ../../../../linux/user/deleteuser
```

---

## Exercise 1 — File tree and navigation

**Task:** create a directory tree and navigate it using relative paths.

**Solution:**
```bash
mkdir -p project/{documents,images,scripts,archives}
tree project
cd project/documents
cd ..                    # back to project/
cd documents
cd ../archives           # go straight from documents/ to archives/ without passing through project/
```

---

## Exercise 2 — Files and content

**Task:** create files, write content into them, display their content.

**Solution:**
```bash
touch documents/report1.txt documents/report2.txt documents/notes.txt documents/todo.txt documents/draft.txt

echo "First sentence of the report" > documents/report1.txt

echo "line A" >> documents/notes.txt
echo "line B" >> documents/notes.txt
echo "line C" >> documents/notes.txt

cat documents/notes.txt          # show everything
tail -n 2 documents/notes.txt    # show the last 2 lines

nano documents/todo.txt          # write 3 tasks, Ctrl+O to save, Ctrl+X to exit
```

---

## Exercise 3 — Search

**Task:** use `find` and `whereis`.

**Solution:**
```bash
find . -name "*.txt"          # all .txt files, recursively
find documents -type f        # only files inside documents/
find . -type d                # only directories
whereis nano                  # locate the nano binary
echo $(whoami) > whoami.txt
```

---

## Exercise 4 — Copy, move, clean up

**Task:** manipulate files with `cp`, `mv`, `rm`, `rmdir`.

**Solution:**
```bash
cp documents/report1.txt archives/
mv archives/report1.txt archives/report1-backup.txt

mv documents/draft.txt scripts/

rm documents/report2.txt

mkdir images_test
rmdir images_test             # works: empty folder

mkdir images_test2
touch images_test2/photo.jpg
rmdir images_test2            # FAILS: "Directory not empty" (intended safety behavior)
rm -r images_test2            # works: deletes everything, even non-empty
```

---

## Exercise 5 — Git

**Task:** version the work and push it to GitHub.

**Solution:**
```bash
git status              # check untracked/modified files
git add .                # stage everything new/modified
git commit -m "Consolidation TP: navigation, files, find, project tree"
git push                 # send to GitHub
git log --oneline        # view condensed commit history
```

**Important reminder:** always run `git status` before `git add .`, to make sure no sensitive file (SSH key, password, `.env`) is about to be added by mistake.
