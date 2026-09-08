# Notes — Day 2: Permissions, chown, Processes

## Symbolic ↔ Octal Conversion

Every file or directory has a set of permissions split across 3 categories of users: **user (u)**, **group (g)**, **other (o)**. Every file starts with `-` and every directory with `d`. Each category has 3 possible permissions: read, write, execute.

Example: `-rwxrwxrwx` = a file with full permissions for everyone. `drwxrwxrwx` = a directory with full permissions for everyone. If you see a `-` instead of a letter, it means that permission is not granted to that category.

Example: `rwx` = can read, write, and execute (or enter/modify, for a directory). `r--` = can only read, neither write nor execute.

This way of notating permissions (using r/w/x letters and dashes) is called **symbolic notation**.

There's also **octal notation**, based on numeric values:
- r = 4
- w = 2
- x = 1

You add up the values of the permissions present in each block of 3 to get one digit per category.

**Examples:**
- `rwx` → 4+2+1 = **7**
- `rwxrwxrwx` → 421 421 421 → **777**
- `rw-rwx---` → 420 421 000 → **670**
- `rwxr-xr--` → 421 401 400 → **754**

To change permissions with `chmod`, you can use either symbolic notation (`chmod u-x file` — modifies one part, relative) or octal notation (`chmod 755 file` — sets everything at once, absolute).

## chown / chgrp

`chown` changes the owner and/or group of a file:
```bash
chown user file            # changes just the owner
chown user:group file      # changes both
chown :group file          # changes just the group
```

`chgrp` does the same thing as `chown :group` but as a dedicated, more explicit command:
```bash
chgrp group file
```

## Processes

- `ps aux | grep keyword` → find a process by name
- `kill PID` → stop a process cleanly
- `top` → watch processes in real time, `q` to quit without killing anything
- `&` at the end of a command → runs the process in the background
