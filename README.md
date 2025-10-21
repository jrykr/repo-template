# Repo Template

This is an opinionated Git repository template using:

- ✅ mise
- ✅ Lefthook (via Homebrew)
- ✅ Editor Config
- ✅ shfmt
- ✅ shell-format
- ✅ ShellCheck
- ✅ Node
- ✅ pnpm
- ✅ markdownlint-cli2
- ✅ Taplo
- ✅ Commitlint
- ✅ Biome
- ✅ Prettier
- ✅ cspell
- ❌ SOPS
- ❌ Release Please

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
2. Run `mise run install-all`

To see a list of tasks used to build and test the project, run:

```console
mise tasks
```

To learn more, see [CONTRIBUTING](CONTRIBUTING.md).
