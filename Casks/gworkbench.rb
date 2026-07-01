cask "gworkbench" do
  version "0.1.4"

  on_arm do
    sha256 "742b3f68c8cc7bd31fa0269340bc7d54d6c00d9921a42e83679795beed0c6b45"
    url "https://github.com/life2you/gworkbench/releases/download/v0.1.4/GWorkbench-macos-arm64-v0.1.4.zip"
  end

  on_intel do
    sha256 "039afd9bda14df61f5605718887140d64096f195c5f32b07cd26977585b54753"
    url "https://github.com/life2you/gworkbench/releases/download/v0.1.4/GWorkbench-macos-x86_64-v0.1.4.zip"
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
