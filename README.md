

## Description

`git-alias-helper` is a Shell script written in scripting language that simplifies the management of Git aliases. It allows you to create, backup, and restore shorthand commands for various Git operations, making your workflow more efficient.
### [Git Aliases Memo](GitAliasesMemo.md)

## Getting Started

### Prerequisites

- Git
- Zsh Shell environment

### Installation

Clone the `git-alias-helper` repository:

```sh
git clone https://github.com/cthonney/git-alias-helper.git
```

Navigate to the `git-alias-helper` directory:

```sh
cd git-alias-helper
```
Make the script executable:

```sh
chmod +x install_git_aliases.sh
```

## Usage

Run the script:

```sh
./git-alias-helper.zsh
```

The script will display a menu with the following options:

1. Backup
2. Restore
3. Add New aliases
4. Exit and restart zsh

Choose the appropriate option by entering the corresponding number.

### Option 1: Backup

This option backs up your current aliases file to a backup file. This is useful before making changes to your aliases.

### Option 2: Restore

This option restores your aliases file from the backup. This can be used in case you need to revert to the previously saved aliases.

### Option 3: Add New aliases

This option adds a set of predefined Git aliases and functions to your aliases file. It also sources the `.zshrc` file to make the new aliases and functions available immediately.

### Option 4: Exit and restart zsh

This option exits the script and restarts the zsh shell.
To add the information about the `git config --global push.autoSetupRemote true` command to the `README.md` file, you can include a section that explains its usage. Here's how you can add it to the README:

## Configuring Automatic Remote Tracking

To streamline your workflow, you can configure Git to automatically set up remote tracking branches when you push new local branches to a remote repository. This can be achieved with the following command:

```
git config --global push.autoSetupRemote true
```

This command is particularly useful for keeping your local and remote branches synchronized without manual setup.


You can add this markdown code to your `README.md` file where you think it fits best in the structure of your documentation. This will render as a section with a title and a code block, followed by an explanation of the command.

## Contributing

Contributions are welcome! Please read the CONTRIBUTING.md file for details on our code of conduct, and the process for submitting pull requests to us.

## License

This project is licensed under the MIT License - see the LICENSE.md file for details.
