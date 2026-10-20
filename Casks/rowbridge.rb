cask "rowbridge" do
  version "0.6.0"
  sha256 "4d8d461263924f186653dae98d3018b9657feee21063df220c8cd102bb3fccc0"

  url "https://github.com/life2you/rowbridge/releases/download/v#{version}/RowBridge_#{version}_aarch64.dmg"
  name "RowBridge"
  desc "MySQL data sync tool that copies tables by primary-key batches"
  homepage "https://github.com/life2you/rowbridge"

  # 新版 Homebrew 禁用了 depends_on macos:，最低系统版本由 Info.plist 的
  # LSMinimumSystemVersion 保证，这里不要再加。
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
