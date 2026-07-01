cask "gworkbench" do
  version "0.1.5"

  on_arm do
    sha256 "6694ea67e6287bac270e8a40ebee837c8ffb8d3444f0526736969111e311d796"
    url "https://github.com/life2you/gworkbench/releases/download/v0.1.5/GWorkbench-macos-arm64-v0.1.5.zip"
  end

  on_intel do
    sha256 "2cb4d97771280e930f5533843b3ae37c582b07b6811f63a3fdbfcb5e4b53ac74"
    url "https://github.com/life2you/gworkbench/releases/download/v0.1.5/GWorkbench-macos-x86_64-v0.1.5.zip"
  end

  name "GWorkbench"
  desc "Native macOS desktop app for Git worktrees and GitLab merge workflows"
  homepage "https://github.com/life2you/gworkbench"

  depends_on macos: :sequoia

  app "GWorkbench.app"

  zap trash: [
    "~/.config/gworkbench",
  ]
end
