# Contributing

## Style

| File Type | Task   | Tool                | Pre-Commit | Mise Task       | VS Code                          |
| --------- | ------ | ------------------- | ---------- | --------------- | -------------------------------- |
| Markdown  | Lint   | `markdownlint-cli2` | ✅         | `lint:markdown` | `davidanson.vscode-markdownlint` |
| Shell     | Format | `shfmt`             | ✅         | `format:shell`  | `foxundermoon.shell-format`      |
|           | Lint   | `shellcheck`        | ✅         | ❌              | `timonwong.shellcheck`           |
| TOML      | Lint   | `taplo`             | ✅         | `lint:toml`     | `tamasfe.even-better-toml`       |
|           | Format | `taplo`             | ✅         | `format:toml`   | `tamasfe.even-better-toml`       |

## Getting Started

After you install `mise` and Homebrew, run the following command to install all
developer tools.

```console
mise run install-all
```

Some tools don't have pinned versions, such as Lefthook. Generally,
you're advised to keep these up-to-date. If the tool isn't already on your path,
we use Homebrew to install it.

For tools with pinned versions, such as Node, we use `mise`.

## Developer Tools

### EditorConfig

[editorconfig.org](https://editorconfig.org)

EditorConfig helps maintain consistent coding styles for multiple developers
working on the same project across various editors and IDEs.

## Lefthook

[lefthook.dev](https://lefthook.dev)

Lefthook is a Git hooks manager.

## markdownlint-cli2

[DavidAnson/markdownlint-cli2](https://github.com/DavidAnson/markdownlint-cli2)

markdownlint-cli2 is a command-line interface for linting Markdown files with
the markdownlint library.

### Mise-en-Place

[mise.jdx.dev](https://mise.jdx.dev)

`mise` is a:

- Polyglot tool version manager, replacing tools like asdf, nvm, pyenv, etc.
- Environment variable manager, replacing direnv, dotenv, etc.
- Task runner, replacing make, just, npm scripts, etc.

```shell
brew install mise

# Activate Zsh integration
echo 'eval "$(mise activate zsh)"' >> "${ZDOTDIR-$HOME}/.zshrc"
```

#### `mise` Completions

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

#### `mise` VS Code Integration

The `hverlin.mise-vscode` extension will automatically configure other
extensions to use tools provided by mise in your current project. This is
important because you want editor extensions to have and use the same versions
of tools that you invoke on the command line and in your CI environment.

#### `mise` Usage

The `.mise.toml` file is intended to be shared in version control.

For personal settings use `.mise.local.toml`.

## Node.js

[nodejs.org](https://nodejs.org)

Node is used for certain dev dependencies. This is a pinned dependency at the
root level of your project for the repository developer tooling. You could have
a different Node environment and packages installed as assets in the project.

## pnpm

[pnpm.io](https://pnpm.io)

pnpm is a faster, more space efficient package manager than the default npm.

Since it depends on Node, whose pinned version we very much care about and is
managed by mise, pnpm is also managed via mise tool versions under Node's
corepack.

## ShellCheck

[shellcheck.net](https://www.shellcheck.net)

ShellCheck is a static analysis tool for shell scripts.

## shfmt

[patrickvane/shfmt](https://github.com/patrickvane/shfmt)

shfmt is a shell formatter.

## taplo

[taplo.tamasafe.dev](https://taplo.tamasfe.dev/cli/introduction.html)

Use taplo to validate, format, and query TOML documents.
