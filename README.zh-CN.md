[English](README.md) | [简体中文](README.zh-CN.md)

# life2you Homebrew Tap

这是 `life2you` 工具集使用的自定义 Homebrew tap 仓库。

## 可用 Formula

| Formula | 说明 | 安装命令 |
| --- | --- | --- |
| `ashlogin` | 选择已配置服务器并调用系统 SSH 客户端的工具 | `brew install life2you/tap/ashlogin` |
| `wetwin` | 面向 macOS 的轻量级微信多开 TUI 管理工具 | `brew install life2you/tap/wetwin` |

## 可用 Cask (桌面应用)

| Cask | 说明 | 安装命令 |
| --- | --- | --- |
| `agentfloat` | macOS 桌面置顶 AI Coding Agent 轮次结束与任务追踪器 | `brew install --cask life2you/tap/agentfloat` |
| `gworkbench` | 原生 macOS 桌面端 Git worktrees 与 GitLab merge 效率工作台 | `brew install --cask life2you/tap/gworkbench` |
| `rowbridge` | macOS 端 MySQL 数据同步工具，按主键分批搬运并自动建表 | `brew install --cask life2you/tap/rowbridge` |

## 使用方式

```bash
brew tap life2you/tap
brew install ashlogin
brew install wetwin
```

## 更新方式

```bash
brew update
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

- `life2you/AshLogin`：当前直接在仓库与 tap 中维护发版和 formula 更新
- `life2you/wetwin`：`scripts/update-homebrew-formula.sh`
