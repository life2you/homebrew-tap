cask "rowbridge" do
  version "0.2.0"
  sha256 "3fa3b279edc4145e82da505d820a3020c7f3b168b1d6ca52fd14e80aa4e4baab"

  url "https://github.com/life2you/rowbridge/releases/download/v#{version}/RowBridge_#{version}_aarch64.dmg"
  name "RowBridge"
  desc "MySQL data sync tool that copies tables by primary-key batches"
  homepage "https://github.com/life2you/rowbridge"

  depends_on macos: :catalina
  depends_on arch: :arm64

  app "RowBridge.app"

  postflight do
    system_command "xattr",
                   args: ["-cr", "#{appdir}/RowBridge.app"]
    system_command "codesign",
                   args: ["--force", "--deep", "--sign", "-", "#{appdir}/RowBridge.app"]
  end

  caveats <<~EOS
    RowBridge 未做 Apple 开发者签名，首次启动若提示"已损坏"，可在终端运行：
      xattr -cr /Applications/RowBridge.app

    默认连接 localhost:3306。建议先用测试库验证：
      源 127.0.0.1:3307  目标 127.0.0.1:3308
  EOS

  zap trash: [
    "~/Library/Application Support/com.rowbridge.app",
    "~/Library/Caches/com.rowbridge.app",
    "~/Library/Preferences/com.rowbridge.app.plist",
    "~/Library/Saved Application State/com.rowbridge.app.savedState",
  ]
end
