class Gwtm < Formula
  desc "Git worktree manager for local multi-project workflows"
  homepage "https://github.com/life2you/gwtm"
  url "https://github.com/life2you/gwtm/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "2e184188e6581136577e2071b811250db975f4509b43e7f1229ef052622a95fa"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: ".")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gwtm --version")
  end
end
