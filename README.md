# life2you Homebrew Tap

Custom Homebrew tap for life2you's tools.

## Available Formulas

| Formula | Description | Install |
|---------|-------------|---------|
| **gwtm** | Git worktree manager for local multi-project workflows | `brew install life2you/tap/gwtm` |
| **gmux** | Terminal Git workflow tool for multi-env branch sync and GitLab MR automation | `brew install life2you/tap/gmux` |

## Usage

```bash
# Add this tap
brew tap life2you/tap

# Install tools
brew install gwtm
brew install gmux
```

## Updating

```bash
brew update
brew upgrade gwtm
brew upgrade gmux
```

## Maintainer Flow

When publishing a new tool release:

1. Create and push the new tag from the tool repository
2. Run that repository's `scripts/update-homebrew-formula.sh`
3. Copy the updated formula into this repository's `Formula/` directory
4. Commit and push this tap repository

Tool-specific release SOPs live in:

- `life2you/gwtm`: `RELEASING.md`
- `life2you/gmux`: `RELEASING.md`
