

## Description

`git-alias-helper` is a Shell script written in scripting language that simplifies the management of Git aliases. It allows you to create, backup, and restore shorthand commands for various Git operations, making your workflow more efficient.

[Git Aliases Memo](GitAliasesMemo.md)


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
chmod +x git-alias-helper.sh
```

## Usage

Run the script:

```sh
./git-alias-helper.sh
```

The script will display a menu with the following options:

1. Backup: Creates a backup of your existing aliases file.
2. Restore: Restores the aliases file from a backup.
3. Create .aliases file and update .zshrc: Creates the .aliases file if it doesn't exist and adds the source command to .zshrc for automatic loading.
4. Add New aliases: Adds predefined Git aliases and functions to the aliases file.
5. Exit: Exits the script and restart the zsh shell.

Choose the desired option by entering the corresponding number when prompted.

## Contributing

Contributions are welcome! Please read the CONTRIBUTING.md file for details on our code of conduct, and the process for submitting pull requests to us.

## License

This project is licensed under the MIT License - see the LICENSE.md file for details.
