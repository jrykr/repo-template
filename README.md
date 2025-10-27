# Repo Template

Setting up a new repository to follow generally accepted best practices can be
surprisingly complex and time consuming.

This is an opinionated Git repository template using:

Developer tools

- ✅ Editor Config
- ✅ Lefthook
- ✅ Node + pnpm
- ✅ mise

Linters and formatters

- ✅ Biome
- ✅ Commitlint
- ✅ Prettier
- ✅ ShellCheck
- ✅ Taplo
- ✅ cspell
- ✅ markdownlint-cli2
- ✅ shell-format
- ✅ shfmt

Security checks

- ✅ GitHub CodeQL (SAST)
- ✅ GitHub Dependabot (SCA)
- ✅ Gitleaks (secret scanning)
- ✅ Syft (SBOM)

CI/CD

- ✅ CODEOWNERS
- ✅ GitHub Actions
- ✅ Release Please

## Usage

### Creating a New Repository from This Template

1. On GitHub, click "Use this template" to create a new repository
2. Clone your new repository locally
3. Follow the post-creation checklist below
4. Delete or update this Usage section in your new README

The `CONTRIBUTING.md` guide includes a description of how the repository tooling
works and detailed steps to onboard new developers.

You may want to keep the **Developer Quickstart** section below in your new
repository's `README` file.

### Post-Creation Checklist

#### Required Setup

- [ ] Update `README.md`
- [ ] Update `LICENSE`
- [ ] Update `CODEOWNERS`
- [ ] Update `SECURITY.md`: Add your security contact email
- [ ] Update or delete `CHANGELOG.md`: Make it your own
- [ ] Reset `.release-please-manifest.json` and `package.json` to version 0.0.0
- [ ] Update `.github/dependabot.yaml`: Configure for your project's package
      ecosystems (currently set for npm and GitHub Actions)
- [ ] Update `.github/workflows/codeql.yaml` for your languages (as available)
- [ ] Update `.release-please-config.json`: Set the correct `release-type` for
      your project (currently `node`). See
      [release types](https://github.com/googleapis/release-please#release-types)
- [ ] Allow GitHub Actions to create PRs In repository Settings > Actions >
      General > Workflow permissions, enable "Allow GitHub Actions to create and
      approve pull requests"
- [ ] Create `RELEASE_PLEASE_TOKEN` Generate a classic PAT with `repo` scope and
      add as repository secret. See
      [release-please documentation](https://github.com/googleapis/release-please-action?tab=readme-ov-file#other-actions-on-release-please-prs)

#### Security Configuration

- [ ] **Enable Dependabot alerts** Settings > Security > Code security >
      Dependabot alerts (should be enabled by default)
- [ ] **Enable Dependabot security updates** Settings > Security > Code
      security > Dependabot security updates (should be enabled by default)
- [ ] **Enable secret scanning** Settings > Security > Code security > Secret
      scanning (free for public repos). Note: Gitleaks also runs automatically
      in CI via the Secret Scanning workflow
- [ ] **Enable push protection** Settings > Security > Code security > Push
      protection (prevents accidental secret commits to GitHub) to match your
      project's languages (currently configured for JavaScript/TypeScript and
      GitHub Actions). See
      [supported languages](https://docs.github.com/en/code-security/code-scanning/automatically-scanning-your-code-for-vulnerabilities-and-errors/about-code-scanning-with-codeql#about-codeql).
      For compiled languages (Java, C++, Go), set `build-mode: manual` and add
      build steps
- [ ] **Review CodeQL results** After first push, review scan results in
      Security > Code scanning tab

#### Branch Protection (Recommended)

Configure protection for your `main` branch in Settings > Branches > Add rule:

- [ ] **Require pull request reviews**: Set minimum number of approving reviews
- [ ] **Require status checks**: Select "Static Code Checks" (from CI workflow)
      to block merges on failing tests
- [ ] **Require code owner reviews**: Enable after filling in `CODEOWNERS` file
- [ ] **Require conversation resolution**: Already enabled in template
- [ ] **Require linear history**: Already enabled in template
- [ ] **Disable force pushes**: Recommend disabling for production branches
- [ ] **Do not allow bypassing**: Prevent admins from bypassing above rules

#### Testing Strategy

- [ ] Add test command to `.mise.toml` tasks
- [ ] Update CI workflow (`.github/workflows/ci.yaml`) to run tests

#### If Open Source

- [ ] Add `CODE_OF_CONDUCT.md`: Use
      [Contributor Covenant](https://www.contributor-covenant.org/) or similar
- [ ] Add `.github/ISSUE_TEMPLATE/` for bug reports, feature requests
- [ ] Add `.github/PULL_REQUEST_TEMPLATE.md` with checklist appropriate for
      public projects

## Developer Quickstart

1. Install mise
2. Run `mise run install-all`

To see a list of tasks used to build and test the project, run:

```console
mise tasks
```

To learn more, see [CONTRIBUTING](CONTRIBUTING.md).
