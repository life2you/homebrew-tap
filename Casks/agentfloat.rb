cask "agentfloat" do
  version "1.0.2"
  sha256 "617e189ea63a16139352e94711bceb1c9c0bc643194503aa9f50de022e3ac835"

  url "https://github.com/life2you/AgentFloat/releases/download/v#{version}/AgentFloat-v#{version}.zip"
  name "AgentFloat"
  desc "macOS desktop floating tracker for AI Coding Agents"
  homepage "https://github.com/life2you/AgentFloat"

  depends_on macos: :sequoia

  app "AgentFloat.app"
  binary "#{appdir}/AgentFloat.app/Contents/MacOS/agentfloat"

  caveats <<~EOS
    若首次启动遇到 macOS 安全提示，可在终端运行：
      xattr -cr /Applications/AgentFloat.app
  EOS

  zap trash: [
    "~/.agentfloat",
    "~/Library/Preferences/com.agentfloat.AgentFloatApp.plist",
  ]
end
