# Contributing

## Getting Started

After you install `mise` run the following command to install all developer
tools.

```console
mise run install-all
```

## Checks

Run all static code checks over the entire codebase:

```console
mise run check
```

The Git pre-commit hook will automatically run checks limited to staged files.

| File Type     | Task   | Tool                | Pre-Commit | Mise Task         | VS Code                               |
| ------------- | ------ | ------------------- | ---------- | ----------------- | ------------------------------------- |
| CSS           | Format | `biome`             | ✅         | `format:biome`    | biomejs.biome                         |
| CSS           | Lint   | `biome`             | ✅         | `lint:biome`      | biomejs.biome                         |
| GraphQL       | Format | `biome`             | ✅         | `format:biome`    | biomejs.biome                         |
| GraphQL       | Lint   | `biome`             | ✅         | `lint:biome`      | biomejs.biome                         |
| HTML          | Format | `prettier`          | ✅         | `format:prettier` | esbenp.prettier-vscode                |
| JSON/C        | Format | `biome`             | ✅         | `format:biome`    | biomejs.biome                         |
| JSON/C        | Lint   | `biome`             | ✅         | `lint:biome`      | biomejs.biome                         |
| JSX/TSX       | Format | `biome`             | ✅         | `format:biome`    | biomejs.biome                         |
| JSX/TSX       | Lint   | `biome`             | ✅         | `lint:biome`      | biomejs.biome                         |
| JavaScript/TS | Format | `biome`             | ✅         | `format:biome`    | biomejs.biome                         |
| JavaScript/TS | Lint   | `biome`             | ✅         | `lint:biome`      | biomejs.biome                         |
| Markdown      | Lint   | `markdownlint-cli2` | ✅         | `lint:markdown`   | davidanson.vscode-markdownlint        |
| Markdown      | Format | `prettier`          | ✅         | `format:prettier` | esbenp.prettier-vscode                |
| Shell         | Format | `shfmt`             | ✅         | `format:shell`    | foxundermoon.shell-format             |
| Shell         | Lint   | `shellcheck`        | ✅         | ❌                | timonwong.shellcheck                  |
| Spelling      | Lint   | `cspell`            | ✅         | `lint:spelling`   | streetsidesoftware.code-spell-checker |
| TOML          | Format | `taplo`             | ✅         | `format:toml`     | tamasfe.even-better-toml`             |
| TOML          | Lint   | `taplo`             | ✅         | `lint:toml`       | tamasfe.even-better-toml              |
| YAML          | Format | `prettier`          | ✅         | `format:prettier` | esbenp.prettier-vscode                |

## Developer Tools

### Biome

- Format JavaScript, TypeScript, JSX, TSX, JSON, HTML, CSS and GraphQL.
- Lint JavaScript, TypeScript, JSX, CSS and GraphQL.

If Prettier does all this formatting and more, why bother with Biome?

Biome lints JavaScript, whereas Prettier needs to be paired with ESLint. Either
way you need two tools. In some projects, it might make sense to adopt ESLint
because of its configurability, but Biome provides a sensible default linter.

### commitlint

[commitlint.js.org](https://commitlint.js.org)

Lint commit messages according to the
[Conventional Commit](https://www.conventionalcommits.org/en/v1.0.0/)
specification.

### cSpell

[cspell.org](https://cspell.org/)

To add a word to the dictionary for everyone, use the `.cspell.json`
configuration file, which is checked into version control. The VS Code extension
by default adds words only to your private workspace settings.

### EditorConfig

[editorconfig.org](https://editorconfig.org)

EditorConfig helps maintain consistent coding styles for multiple developers
working on the same project across various editors and IDEs.

### Lefthook

[lefthook.dev](https://lefthook.dev)

Lefthook is a Git hooks manager.

### markdownlint-cli2

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

### Node.js

[nodejs.org](https://nodejs.org)

Node is used for certain dev dependencies. This is a pinned dependency at the
root level of your project for the repository developer tooling. You could have
a different Node environment and packages installed as assets in the project.

### pnpm

[pnpm.io](https://pnpm.io)

pnpm is a faster, more space efficient package manager than the default npm.

Since it depends on Node, whose pinned version we very much care about and is
managed by mise, pnpm is also managed via mise tool versions under Node's
corepack.

### Prettier

[prettier.io](https://prettier.io)

Prettier is an opinionated formatter that supports many languages.

We use it for HTML, Markdown, and YAML. Other languages use Biome.

### release-please

[googleapis/release-please](https://github.com/googleapis/release-please)

Release Please automates CHANGELOG generation, the creation of GitHub releases,
and version bumps.

### ShellCheck

[shellcheck.net](https://www.shellcheck.net)

ShellCheck is a static analysis tool for shell scripts.

### shfmt

[patrickvane/shfmt](https://github.com/patrickvane/shfmt)

shfmt is a shell formatter.

### taplo

[taplo.tamasfe.dev](https://taplo.tamasfe.dev/cli/introduction.html)

Use taplo to validate, format, and query TOML documents.
