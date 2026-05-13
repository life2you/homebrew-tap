# AGENTS.md

## Scope

This repository maintains Homebrew formulas for tools released from sibling repositories.

## AI Collaboration Rules

- Prefer `gh` for GitHub operations. Before using raw `git`, `curl`, or manual browser steps for PRs, issues, release checks, or repository inspection, first check whether `gh` is installed and authenticated with `command -v gh` and `gh auth status`.
- Keep formula `url`, explicit `version`, and `sha256` values aligned with the published GitHub release assets or release tarballs.
- Prefer updates generated from each tool repository's `scripts/update-homebrew-formula.sh`; avoid ad hoc manual edits unless there is no scripted path.
- When release or upgrade maintenance flow changes, update the related maintainer documentation in both English and Chinese.
- After changing a formula, verify it with `brew fetch life2you/tap/<formula>` whenever possible.
