class Ashlogin < Formula
  desc "Small Rust CLI for selecting a configured server and launching system ssh"
  homepage "https://github.com/life2you/AshLogin"
  url "https://github.com/life2you/AshLogin/archive/refs/tags/v0.3.1.tar.gz"
  sha256 "41ed4bf0d239d5e2be2a485343e1dc89aeed83818d8e60d4a198321b31e7786a"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: ".")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ashlogin --version")
  end
end
