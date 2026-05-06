[English](README.md) | [简体中文](README.zh-CN.md)

# life2you Homebrew Tap

这是 `life2you` 工具集使用的自定义 Homebrew tap 仓库。

## 可用 Formula

| Formula | 说明 | 安装命令 |
| --- | --- | --- |
| `gwtm` | 面向本地多项目工作流的 Git worktree 管理工具 | `brew install life2you/tap/gwtm` |
| `gmux` | 支持多环境分支同步和 GitLab MR 自动化的终端 Git 工作流工具 | `brew install life2you/tap/gmux` |
| `codexsmtui` | 用于管理本地 OpenAI Codex CLI sessions 的终端优先 TUI 工具 | `brew install life2you/tap/codexsmtui` |

## 使用方式

```bash
brew tap life2you/tap
brew install gwtm
brew install gmux
brew install codexsmtui
```

## 更新方式

```bash
brew update
brew upgrade gwtm
brew upgrade gmux
brew upgrade codexsmtui
```

## 维护者流程

当发布新的工具版本时：

1. 在工具仓库中创建并推送新的 tag。
2. 运行该仓库中的 `scripts/update-homebrew-formula.sh <version>`。
3. 将更新后的 formula 复制到本仓库的 `Formula/` 目录。
4. 提交并推送这个 tap 仓库。

工具仓库的发版 SOP 位于：

- `life2you/gwtm`：`RELEASING.md` 和 `RELEASING.zh-CN.md`
- `life2you/gmux`：`RELEASING.md` 和 `RELEASING.zh-CN.md`
- `life2you/codexsmTui`：`README.md`
