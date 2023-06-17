#!/usr/bin/env zsh

# Define the file that contains the existing aliases
ALIAS_FILE="$HOME/.aliases"
BACKUP_FILE="$HOME/.aliases.bak"
ZSHRC_FILE="$HOME/.zshrc"

# Define the new git aliases
git_aliases=(
"alias ga='git add' # Add file contents to the index"
"alias gb='git branch' # List, create, or delete branches"
"alias gc='git commit' # Record changes to the repository"
"alias gco='git checkout' # Switch branches or restore working tree files"
"alias gd='git diff' # Show changes between commits, commit and working tree, etc"
"alias gf='git fetch' # Download objects and refs from another repository"
"alias glg='git log --graph --oneline --decorate' # Show a graph of commits"
"alias gl='git log' # Show commit logs"
"alias gm='git merge' # Join two or more development histories together"
"alias gp='git push' # Update remote refs along with associated objects"
"alias gs='git status' # Show the working tree status"
"alias gcb='git checkout -b' # Create a new branch and switch to it"
)

# Define the new git functions
git_functions=(
'gacp() {
   git add .
   git commit -m "$1"
   git push origin "$(git_current_branch)"
} # Add all changes, commit with a message, and push to remote'

'gac() {
   git add .
   git commit -m "$1"
} # Add all changes, commit with a message'

'gsweep() {
  git branch --merged $(git defaultBranch) | grep -E -v " $(git defaultBranch)$" | xargs -r git branch -d && git remote prune origin
} # Delete all branches that have been merged into the current branch'
)

# Function to backup the alias file
backup_aliases() {
  cp $ALIAS_FILE $BACKUP_FILE
  echo "Alias file backed up to $BACKUP_FILE"
}

# Function to restore the alias file from backup
restore_aliases() {
  if [ -f $BACKUP_FILE ]; then
    cp $BACKUP_FILE $ALIAS_FILE
    echo "Alias file restored from $BACKUP_FILE"
  else
    echo "Backup file does not exist."
  fi
}

# Function to create .aliases file and update .zshrc file
create_aliases() {
  # Create .aliases file if it doesn't exist
  if [ ! -f "$ALIAS_FILE" ]; then
    touch "$ALIAS_FILE"
    echo "Created $ALIAS_FILE"
  else
    echo ".aliases file already exists."
  fi

  # Add the source command to the .zshrc file if it's not already there
  if ! grep -qF "source $ALIAS_FILE" "$ZSHRC_FILE"; then
    echo "source $ALIAS_FILE" >> "$ZSHRC_FILE"
    echo "source $ALIAS_FILE" >> "$ZSHRC_FILE"
    echo "Added source command to $ZSHRC_FILE"
  else
    echo "Source command already present in $ZSHRC_FILE."
  fi
}

# Function to add aliases
add_aliases() {
  # Add each git alias to the ALIAS_FILE, but only if it doesn't already exist there
  for git_alias in "${git_aliases[@]}"; do
    alias_name=$(echo $git_alias | cut -d'=' -f1)
    if ! grep -Fxq "$git_alias" $ALIAS_FILE; then
      echo "$git_alias" >> $ALIAS_FILE
    fi
  done

  # Add each git function to the ALIAS_FILE, but only if it doesn't already exist there
  for git_function in "${git_functions[@]}"; do
    function_name=$(echo $git_function | cut -d'(' -f1)
    if ! grep -Fq "$function_name()" $ALIAS_FILE; then
      echo "$git_function" >> $ALIAS_FILE
    fi
  done

  # Source the .zshrc file to make the new aliases and functions available immediately
  source ~/.zshrc

  # Print a message to indicate that the script has finished
  echo "Git aliases and functions have been added to your $ALIAS_FILE file and are available for use."
}

# Function to display the menu
show_menu() {
  echo "1) Backup"
  echo "2) Restore"
  echo "3) Create .aliases file and update .zshrc"
  echo "4) Add New aliases"
  echo "5) Exit"
}

# Main loop
while true; do
  show_menu
   echo -n "Enter choice: "
   read choice
  case $choice in
    1)
      backup_aliases
      ;;
    2)
      restore_aliases
      ;;
    3)
      create_aliases
      ;;
    4)
      add_aliases
      ;;
    5)
      echo "Exiting."
      exec zsh
      ;;
    *)
      echo "Invalid choice"
      ;;
  esac
done
