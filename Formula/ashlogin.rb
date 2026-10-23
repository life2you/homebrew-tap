class Ashlogin < Formula
  desc "Small Rust CLI for selecting a configured server and launching system ssh"
  homepage "https://github.com/life2you/AshLogin"
  url "https://github.com/life2you/AshLogin/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "25afe2743e47b1e152503f5e18976eeeb73090b3f8307788fca2ffa2c762da5d"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: ".")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ashlogin --version")
  end
end
