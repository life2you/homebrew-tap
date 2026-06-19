class Ashlogin < Formula
  desc "Small Rust CLI for selecting a configured server and launching system ssh"
  homepage "https://github.com/life2you/AshLogin"
  url "https://github.com/life2you/AshLogin/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "c52d71361af6b4eed522f000a33efb8ebaff4624eff57ac10401eb55a5910511"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: ".")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ashlogin --version")
  end
end
