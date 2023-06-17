
# Git Aliases Memo

Alias/Function | Command | Usage | Example
--- | --- | --- | ---
`ga` | `git add` | Add file contents to the index | `ga README.md`
`gb` | `git branch` | List, create, or delete branches | `gb`
`gc` | `git commit` | Record changes to the repository | `gc "Initial commit"`
`gco` | `git checkout` | Switch branches or restore files | `gco feature-branch`
`gd` | `git diff` | Show changes between commits | `gd HEAD~1`
`gf` | `git fetch` | Download objects and refs from another repository | `gf`
`glg` | `git log --graph --oneline --decorate` | Show a graph of commits | `glg`
`gl` | `git log` | Show commit logs | `gl`
`gm` | `git merge` | Join two or more development histories together | `gm feature-branch`
`gp` | `git push` | Update remote refs and associated objects | `gp`
`gs` | `git status` | Show the working tree status | `gs`
`gcb` | `git checkout -b` | Create a new branch and switch to it | `gcb feature-branch`
`gacp` | `git add .`, `git commit`, `git push` | Add all changes, commit with a message, and push | `gacp "Add new feature"`
`gsweep` | `git branch --merged \| egrep -v "(^\*|master|dev)" \| xargs git branch -d` | Delete all branches that have been merged into the current branch | `gsweep`

