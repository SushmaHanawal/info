# Useful info
1. Git commands

git --version
git config --list
 
 
git config --global user.name "username"
git config --global user.email "email"
git remote set-url origin http://username:password@machine-name/git/repo.git
 
git help config, git help add, git help commit
 
git init - initializes git in a given folder
git status
touch .gitignore
git add -A : Adds the files to staging area
git commit -m "Initial commit": Commits the file from staging area to the local repo
git reset: Removes the files from the staging area
git log: Gives the log of what happened in the repository.
git clone <remote repo/remote-repo.git> . : copies the remote repository into local 
git remote -v : Viewing the information about remote repository
git branch -a : Lists all the branches in our repository
git diff: Lists the difference between the current file and file in the local repository
(then commit changes and then push)
git pull origin master : will sync changes in the remote repository with the local
git push origin master : will put your changes from the local repository to remote repository
 
WORKFLOW:
git branch <branchname>
git checkout <branchname>
git status
Make changes
git commit -m "<msg>"
git push -u origin <branchname>
git branch -a
 
MERGING BRANCH:
git checkout master
git pull origin master
git branch --merged
git merge <branchname>
git push origin master


