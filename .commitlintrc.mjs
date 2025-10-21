import { RuleConfigSeverity } from "@commitlint/types";

const Configuration = {
  parserPreset: "conventional-changelog-conventionalcommits",
  rules: {
    "header-max-length": [RuleConfigSeverity.Error, "always", 72],
    "header-trim": [RuleConfigSeverity.Error, "always"],
    "type-case": [RuleConfigSeverity.Error, "always", "lower-case"],
    "type-empty": [RuleConfigSeverity.Error, "never"],
    "type-enum": [
      RuleConfigSeverity.Error,
      "always",
      [
        "build",
        "chore",
        "ci",
        "docs",
        "feat",
        "fix",
        "perf",
        "refactor",
        "revert",
        "style",
        "test",
        "wip",
      ],
    ],
    // "scope-enum": [RuleConfigSeverity.Error, "always", ["core", "web"]],
    "scope-case": [RuleConfigSeverity.Error, "always", "lower-case"],
    "subject-case": [
      RuleConfigSeverity.Error,
      "never",
      ["sentence-case", "start-case", "pascal-case", "upper-case"],
    ],
    "subject-empty": [RuleConfigSeverity.Error, "never"],
    "subject-exclamation-mark": [RuleConfigSeverity.Error, "never"],
    "subject-full-stop": [RuleConfigSeverity.Error, "never", "."],
    "body-leading-blank": [RuleConfigSeverity.Error, "always"],
    "body-max-line-length": [RuleConfigSeverity.Error, "always", 80],
    "footer-leading-blank": [RuleConfigSeverity.Error, "always"],
    "footer-max-line-length": [RuleConfigSeverity.Error, "always", 80],
  },
};

export default Configuration;
