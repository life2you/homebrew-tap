cask "agentfloat" do
  version "1.0.7"
  sha256 "250bb3260f36e56a097ac950b9b9b80c4bef2be1b83ec01acffb2ae4799f9e3b"

  url "https://github.com/life2you/AgentFloat/releases/download/v#{version}/AgentFloat-v#{version}.zip"
  name "AgentFloat"
  desc "macOS desktop floating tracker for AI Coding Agents"
  homepage "https://github.com/life2you/AgentFloat"

  depends_on macos: :sequoia

  app "AgentFloat.app"
  binary "#{appdir}/AgentFloat.app/Contents/MacOS/agentfloat"

  postflight do
    system_command "xattr",
                   args: ["-cr", "#{appdir}/AgentFloat.app"]
    system_command "codesign",
                   args: ["--force", "--deep", "--sign", "-", "#{appdir}/AgentFloat.app"]
  end

  caveats <<~EOS
    若首次启动遇到 macOS 安全提示，可在终端运行：
      xattr -cr /Applications/AgentFloat.app
  EOS

  zap trash: [
    "~/.agentfloat",
    "~/Library/Preferences/com.agentfloat.AgentFloatApp.plist",
  ]
end
