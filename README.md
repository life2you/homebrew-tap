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

## Usage

```bash
brew tap life2you/tap
brew install gwtm
brew install gmux
brew install codexsmtui
brew install autosort-mac
```

## Updating

```bash
brew update
brew upgrade gwtm
brew upgrade gmux
brew upgrade codexsmtui
brew upgrade autosort-mac
```

## Maintainer Flow

When publishing a new tool release:

1. Create and push the new tag from the tool repository.
2. Run that repository's `scripts/update-homebrew-formula.sh <version>`.
3. Copy the updated formula into this repository's `Formula/` directory.
4. Commit and push this tap repository.

Tool-specific release SOPs live in:

- `life2you/gwtm`: `RELEASING.md` and `RELEASING.zh-CN.md`
- `life2you/gmux`: `RELEASING.md` and `RELEASING.zh-CN.md`
- `life2you/codexsmTui`: `README.md`
- `life2you/autosort-mac`: `README.md`
