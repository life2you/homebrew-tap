class Gmux < Formula
  desc "Terminal Git workflow tool for multi-env branch sync and GitLab MR automation"
  homepage "https://github.com/life2you/gmux"
  url "https://github.com/life2you/gmux/archive/refs/tags/v0.1.7.tar.gz"
  sha256 "3b7ca313a5c89f62d825b2f003bc54bb2ae6e9b764a55454285eeb2698d10dd4"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: ".")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gmux --version")
  end
end
