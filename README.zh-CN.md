[English](README.md) | [简体中文](README.zh-CN.md)

# life2you Homebrew Tap

这是 `life2you` 工具集使用的自定义 Homebrew tap 仓库。

## 可用 Formula

| Formula | 说明 | 安装命令 |
| --- | --- | --- |
| `gwtm` | 面向本地多项目工作流的 Git worktree 管理工具 | `brew install life2you/tap/gwtm` |
| `gmux` | 支持多环境分支同步和 GitLab MR 自动化的终端 Git 工作流工具 | `brew install life2you/tap/gmux` |
| `codexsmtui` | 用于管理本地 OpenAI Codex CLI sessions 的终端优先 TUI 工具 | `brew install life2you/tap/codexsmtui` |
| `autosort-mac` | 自动整理 macOS 桌面和下载目录文件的工具 | `brew install life2you/tap/autosort-mac` |
| `ashlogin` | 面向 macOS 的终端优先 SSH 账号管理与登录工具 | `brew install life2you/tap/ashlogin` |
| `wetwin` | 面向 macOS 的轻量级微信多开 TUI 管理工具 | `brew install life2you/tap/wetwin` |

## 使用方式

```bash
brew tap life2you/tap
brew install gwtm
brew install gmux
brew install codexsmtui
brew install autosort-mac
brew install ashlogin
brew install wetwin
```

## 更新方式

```bash
brew update
brew upgrade gwtm
brew upgrade gmux
brew upgrade codexsmtui
brew upgrade autosort-mac
brew upgrade ashlogin
brew upgrade wetwin
```

## 维护者流程

当发布新的工具版本时：

1. 优先使用工具仓库里的 `scripts/release-and-upgrade-local.sh <version>`。
2. 这个脚本会先推送当前分支和 release tag，在可用时优先使用 `gh`，然后等待 GitHub release workflow 完成，并继续等待本 tap 更新。
3. 工具仓库里的 `.github/workflows/release.yml` 现在会在 release 发布后自动更新本 tap，但前提是已经配置 `HOMEBREW_TAP_PUSH_TOKEN` 仓库密钥。
4. 同一个本地脚本随后会执行 `brew update` 和本机 formula 升级，让发布机器上的安装版本保持同步。

工具仓库的发版 SOP 位于：

- `life2you/gwtm`：`RELEASING.md` 和 `RELEASING.zh-CN.md`
- `life2you/gmux`：`RELEASING.md` 和 `RELEASING.zh-CN.md`
- `life2you/codexsmTui`：`RELEASING.md`
- `life2you/autosort-mac`：`RELEASING.md`
- `life2you/AshLogin`：`RELEASING.md`
- `life2you/wetwin`：`scripts/update-homebrew-formula.sh`
