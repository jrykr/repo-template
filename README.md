# Repo Template

This is an opinionated Git repository template using:

- ✅ mise
- ✅ Lefthook (via Homebrew)
- ✅ Editor Config
- ❌ PNPM
- ❌ markdownlint-cli2
- ❌ Taplo
- ❌ Commitlint
- ❌ Commitizen
- ❌ Biome
- ❌ Prettier
- ❌ SOPS
- ❌ ShellCheck
- ❌ shfmt
- ❌ shell-format
- ❌ cspell

## Usage

On GitHub, create a GitHub repository from template.

Locally, clone the repository, remove the `.git` directory, and then initialize
your own Git project.

The `CONTRIBUTING` guide includes a description about how the repository tooling
works and detailed steps to onboard a new developer.

You may want to keep the **Developer Quickstart** section below in your new
repository's `README` file.

## Developer Quickstart

1. Install mise
2. Run `mise run install`

To see a list of tasks used to build and test the project, run:

```console
mise tasks
```

To learn more, see [CONTRIBUTING](CONTRIBUTING.md).
