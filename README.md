[English](README.md) | [简体中文](README.zh-CN.md)

# life2you Homebrew Tap

Custom Homebrew tap for life2you's tools.

## Available Formulae

| Formula | Description | Install |
| --- | --- | --- |
| `gwtm` | Git worktree manager for local multi-project workflows | `brew install life2you/tap/gwtm` |
| `gmux` | Terminal Git workflow tool for multi-environment branch sync and GitLab MR automation | `brew install life2you/tap/gmux` |
| `codexsmtui` | Terminal-first TUI for managing local OpenAI Codex CLI sessions | `brew install life2you/tap/codexsmtui` |
| `autosort-mac` | Automatically organize Desktop and Downloads files on macOS | `brew install life2you/tap/autosort-mac` |
| `ashlogin` | Terminal-first SSH account manager and login launcher for macOS | `brew install life2you/tap/ashlogin` |
| `wetwin` | Lightweight macOS WeChat multi-instance manager with a terminal UI | `brew install life2you/tap/wetwin` |

## Usage

```bash
brew tap life2you/tap
brew install gwtm
brew install gmux
brew install codexsmtui
brew install autosort-mac
brew install ashlogin
brew install wetwin
```

## Updating

```bash
brew update
brew upgrade gwtm
brew upgrade gmux
brew upgrade codexsmtui
brew upgrade autosort-mac
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

- `life2you/gwtm`: `RELEASING.md` and `RELEASING.zh-CN.md`
- `life2you/gmux`: `RELEASING.md` and `RELEASING.zh-CN.md`
- `life2you/codexsmTui`: `RELEASING.md`
- `life2you/autosort-mac`: `RELEASING.md`
- `life2you/AshLogin`: `RELEASING.md`
- `life2you/wetwin`: `scripts/update-homebrew-formula.sh`
