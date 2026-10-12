# **Git & GitHub Workflow Lab**
## **Objective**
Document and practise Git fundamentals and professional GitHub collaboration workflows for DevOps engineering.
## **1. Git Fundamentals**
- **Working tree:** Files and changes in the local working directory.
- **Staging area:** Changes selected for the next commit.
- **Local repository:** Commits and project history stored on the local machine.
- **Remote repository:** A repository hosted on a service such as GitHub.
## **2. Inspecting Changes**
git status
git diff
git diff --cached
git log --oneline --graph --all
- git status shows the current state of files and the branch.
- git diff displays unstaged changes.
- git diff --cached displays staged changes.
- git log displays commit history.
## **3. Branching and Collaboration**
A feature branch allows work to be developed separately from main.
git switch main
git pull --ff-only origin main
git switch -c feature/my-change
After making changes:
git add README.md
git diff --cached
git commit -m "docs: update workflow documentation"
git push -u origin feature/my-change
Open a Pull Request on GitHub so the changes can be reviewed and merged.
## **4. Remote Synchronization**
- git fetch origin downloads remote updates without merging them into the current branch.
- git pull fetches updates and integrates them into the current branch.
- git push sends local commits to the remote repository.
- git fetch --prune origin also removes remote-tracking references for branches deleted from the remote.
## **5. Pull Request Workflow**
1. Update the local main branch.
2. Create a feature branch.
3. Make and inspect changes.
4. Stage and commit the changes.
5. Push the feature branch to GitHub.
6. Open a Pull Request.
7. Review and test the changes.
8. Merge the Pull Request.
9. Update local main.
10. Delete the feature branch when it is no longer needed.
## **6. Lab Completed**
- Created a feature branch from main.
- Added and committed documentation.
- Pushed a feature branch to GitHub.
- Opened and merged a Pull Request.
- Synchronized local main with the remote.
- Practised pruning deleted remote-tracking branches.
## **Key Principle**
Keep main stable, use feature branches for changes, review work through Pull Requests, and verify the repository state before committing or merging.
1.
