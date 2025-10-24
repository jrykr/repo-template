# Repo Template

This is an opinionated Git repository template using:

- ✅ mise
- ✅ Lefthook
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
- ✅ GitHub Actions
- ✅ GitHub Dependabot
- ✅ CODEOWNERS
- ✅ Release Please
- ❌ Software Bill of Materials (SBOM)

## Usage

On GitHub, create a GitHub repository from template.

Locally, clone the repository, remove the `.git` directory, and then initialize
your own Git project.

The `CONTRIBUTING` guide includes a description about how the repository tooling
works and detailed steps to onboard a new developer.

You may want to keep the **Developer Quickstart** section below in your new
repository's `README` file.

Post-creation steps:

- Update the `README.md` file.
- Update the `LICENSE` file.
- Update the `SECURITY.md` file and implement associated features in your
  repository.
- Update `.github/dependabot.yaml` for your ecosystems.
- Update the release type in `.release-please-config.json`
- Set up a `RELEASE_PLEASE_TOKEN` GitHub secret (see
  [release-please docs](https://github.com/googleapis/release-please-action?tab=readme-ov-file#other-actions-on-release-please-prs))

## Developer Quickstart

1. Install mise
2. Run `mise run install-all`

To see a list of tasks used to build and test the project, run:

```console
mise tasks
```

To learn more, see [CONTRIBUTING](CONTRIBUTING.md).
