cask "agentfloat" do
  version "1.0.0"
  sha256 "addb183fb9b1196150ccceb4e3da6eba0b93daaa42d96ac8796e0b10ab5e4da9"

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
