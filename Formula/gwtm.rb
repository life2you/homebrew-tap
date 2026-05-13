class Gwtm < Formula
  desc "Git worktree manager for local multi-project workflows"
  homepage "https://github.com/life2you/gwtm"
  version "0.1.7"
  url "https://github.com/life2you/gwtm/archive/refs/tags/v0.1.7.tar.gz"
  sha256 "789f96f3790b285bb239bf5d71dc29daf23d0ff3f2e46fe76a8fa31d9e3dd63e"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: ".")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gwtm --version")
  end
end
