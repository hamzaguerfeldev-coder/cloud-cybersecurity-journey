# **03 — Shell Scripting**  
**Phase 0 · Linux & Networking Foundations**  
Learning to automate the Linux basics from modules 01 and 02 with Bash: variables, user input, arguments, conditionals (if/case), loops (for/while), arrays, and file testing — the daily glue language of every DevOps engineer.  
**Method:** each exercise was written by me first (often with bugs), then tested, reviewed, and fixed in a second commit. The history of this folder shows the real learning process — attempts, failures, corrections.  
## **🧪 Exercises**  
| | | | |  
|-|-|-|-|  
| **#** | **Exercise** | **Goal** | **Solution** |   
| 1 | Hello script | First script: print a message with echo | [hello.sh](https://claude.ai/chat/scripts/hello.sh "https://claude.ai/chat/scripts/hello.sh") |   
| 2 | Show the date | Use command substitution $(date) inside a message | [date_show.sh](https://claude.ai/chat/scripts/date_show.sh "https://claude.ai/chat/scripts/date_show.sh") |   
| 3 | Addition | Sum two numbers passed as **arguments** ($1, $2) | [Addition.sh](https://claude.ai/chat/scripts/Addition.sh "https://claude.ai/chat/scripts/Addition.sh") |   
| 4 | Compare | Compare two arguments: greater / smaller / equal | [compare.sh](https://claude.ai/chat/scripts/compare.sh "https://claude.ai/chat/scripts/compare.sh") |   
| 5 | Even or odd | Check parity of an argument with arithmetic $((%)) | [pair.sh](https://claude.ai/chat/scripts/pair.sh "https://claude.ai/chat/scripts/pair.sh") |   
| 6 | Multiplication table | for loop over a number given by the user (read) | [multiple.sh](https://claude.ai/chat/scripts/multiple.sh "https://claude.ai/chat/scripts/multiple.sh") |   
| 7 | Counter | Print all numbers from 0 to N with a for loop | [compte.sh](https://claude.ai/chat/scripts/compte.sh "https://claude.ai/chat/scripts/compte.sh") |   
| 8 | Count files & dirs | find + wc -l to count files and directories in the current path | [how_much_file.sh](https://claude.ai/chat/scripts/how_much_file.sh "https://claude.ai/chat/scripts/how_much_file.sh") |   
| 9 | Does it exist? | Test a path: file (-f), directory (-d), or nothing | [exist_file.sh](https://claude.ai/chat/scripts/exist_file.sh "https://claude.ai/chat/scripts/exist_file.sh") |   
| 10 | Permissions | Check if a file is readable / writable / executable (-r, -w, -x) | [permission.sh](https://claude.ai/chat/scripts/permission.sh "https://claude.ai/chat/scripts/permission.sh") |   
| 11 | Word search | Verify a word exists inside a file with grep -q | [search_word.sh](https://claude.ai/chat/scripts/search_word.sh "https://claude.ai/chat/scripts/search_word.sh") |   
| 12 | File analysis | Count lines, words, chars of a file with wc | [analyse.sh](https://claude.ai/chat/scripts/analyse.sh "https://claude.ai/chat/scripts/analyse.sh") |   
| 13 | Dated directory | Build a dynamic name with $(date +%Y-%m-%d) and create it | [dynamic_directory.sh](https://claude.ai/chat/scripts/dynamic_directory.sh "https://claude.ai/chat/scripts/dynamic_directory.sh") |   
| 14 | Interactive menu | case statement + user choice (date, user, path, files, exit) | [backup_manager.sh](https://claude.ai/chat/scripts/backup_manager.sh "https://claude.ai/chat/scripts/backup_manager.sh") |   
| 15 | Array manager | Arrays (+=), while menu loop, case with default fallback — add/list fruits & animals | [array.sh](https://claude.ai/chat/scripts/array.sh "https://claude.ai/chat/scripts/array.sh") |   
| 16 | **Linux system audit** | Combine Bash skills to inspect system information, disk usage, memory, services, processes, and exit status | [server_audit.sh](scripts/server_audit.sh) |
Test data files: [f.txt](https://claude.ai/chat/scripts/f.txt "https://claude.ai/chat/scripts/f.txt"), [r.txt](https://claude.ai/chat/scripts/r.txt "https://claude.ai/chat/scripts/r.txt")  
## **▶️ How to run**  
chmod +x scripts/*.sh        # give execution permission once  
./scripts/hello.sh           # run any script  
./scripts/Addition.sh 4 7    # scripts with arguments  
bash scripts/multiple.sh     # or run via bash directly  
   
## **🐛 Bugs found by testing (fixed in the second commit)**  
Writing the script is only half the job — running it is where the truth appears:  
- **compte.sh** — two stray ~ lines from vim got saved into the file; bash tried to execute my home directory. Lesson: the file content is exactly what you save.  
- **how_much_file.sh** — find -type -d is invalid syntax (should be -type d); the directory count silently printed 0 on error instead of failing loudly.  
- **Broken shebangs** (#!usr/bin/env bash, #!/src/bin/env bash) — invisible when running bash script.sh, but they break when cron/systemd launches the script directly.  
- **Addition.sh, compare.sh, pair.sh** — crashed with a syntax error when called without arguments; added usage checks ($#).  
- **backup_manager.sh** — $(exit) runs in a subshell so it never really exited; also added a default *) case for invalid menu input.  
## **💡 What this module taught me**  
- Test every script, including the "obvious" cases — and the edge cases (no arguments, wrong input).  
- Quote variables ("$1", "$file") — spaces in paths break unquoted scripts.  
- Arrays (+=, "${array[@]}") are the right tool once a script needs to track more than one dynamic value — cleaner than juggling several separate variables.  
- man pages and real execution beat theory: find, wc, grep options learned by using them.  
   
