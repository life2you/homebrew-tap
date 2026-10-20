[English](README.md) | [简体中文](README.zh-CN.md)

# life2you Homebrew Tap

Custom Homebrew tap for life2you's tools.

## Available Formulae

| Formula | Description | Install |
| --- | --- | --- |
| `ashlogin` | Select a configured server and launch the system SSH client | `brew install life2you/tap/ashlogin` |
| `wetwin` | Lightweight macOS WeChat multi-instance manager with a terminal UI | `brew install life2you/tap/wetwin` |

## Available Casks

| Cask | Description | Install |
| --- | --- | --- |
| `agentfloat` | macOS desktop floating tracker for AI Coding Agents | `brew install --cask life2you/tap/agentfloat` |
| `gworkbench` | Native macOS desktop app for Git worktrees and GitLab merge workflows | `brew install --cask life2you/tap/gworkbench` |
| `rowbridge` | MySQL data sync tool that copies tables by primary-key batches | `brew install --cask life2you/tap/rowbridge` |

## Usage

```bash
brew tap life2you/tap
brew install ashlogin
brew install wetwin
```

## Updating

```bash
brew update
brew upgrade ashlogin
brew upgrade wetwin
```

## Maintainer Flow

When publishing a new tool release:

1. Prefer the tool repository's `scripts/release-and-upgrade-local.sh <version>` helper.
2. That helper pushes the current branch and release tag, prefers `gh` when available, waits for the GitHub release workflow to finish, then waits for this tap to update.
3. The tool repository's `.github/workflows/release.yml` now updates this tap automatically after release publication when the `HOMEBREW_TAP_PUSH_TOKEN` secret is configured.
4. The same local helper then runs `brew update` and upgrades the local formula so the publisher's machine stays in sync.

Tool-specific release SOPs live in:

- `life2you/AshLogin`: release and formula update are currently maintained directly in the repository and tap
- `life2you/wetwin`: `scripts/update-homebrew-formula.sh`
