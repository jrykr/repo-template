# Contributing

## Prerequisite: Install Mise-en-Place

[mise.jdx.dev](https://mise.jdx.dev)

mise is a:

- Polyglot tool version manager, replacing tools like asdf, nvm, pyenv, etc.
- Environment variable manager, replacing direnv, dotenv, etc.
- Task runner, replacing make, just, npm scripts, etc.

```shell
brew install mise

# Activate Zsh integration
echo 'eval "$(mise activate zsh)"' >> "${ZDOTDIR-$HOME}/.zshrc"
```

### `mise` Completions

If you used Homebrew, completions may have been installed for you. Check the
output logs.

If you use oh-my-zsh, there is a mise plugin.

Otherwise:

```shell
# Look for zsh completions:
echo $fpath | tr ' ' '\n'

# Example installation:
mise completion zsh  > ~/.zsh/site-functions/_mise
```

### VS Code Integration

The `hverlin.mise-vscode` extension will automatically configure other
extensions to use tools provided by mise in your current project. This is
important because you want editor extensions to have and use the same versions
of tools that you invoke on the command line and in your CI environment.

### Usage

The `.mise.toml` file is intended to be shared in version control.

For personal settings use `.mise.local.toml`.

## EditorConfig

[editorconfig.org](https://editorconfig.org)

EditorConfig helps maintain consistent coding styles for multiple developers
working on the same project across various editors and IDEs.

VS Code integration: `editorconfig.editorconfig`

## Lefthook

[lefthook.dev](https://lefthook.dev)

Lefthook is a Git hooks manager. If not found, it will be installed via
Homebrew.

## ShellCheck

[shellcheck.net](https://www.shellcheck.net)

ShellCheck is a static analysis tool for shell scripts.

- VS Code integration: `timonwong.shellcheck`
- pre-commit: yes

## shfmt

[patrickvane/shfmt](https://github.com/patrickvane/shfmt)

shfmt is a shell formatter.

- VS Code integration: `foxundermoon.shell-format`
- pre-commit: yes
