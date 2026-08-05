class Envorigin < Formula
  desc "Explain where environment variables come from — Docker Compose, GitHub Actions, GitLab CI, CircleCI"
  homepage "https://github.com/FIERsity/envorigin"
  url "https://github.com/FIERsity/envorigin/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "66360df4c3b6a3a318744b0d69b5f7e05862b0cfa7bb2cd0ab562de3ba4cc2a1"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "envorigin", shell_output("#{bin}/envorigin --version")
  end
end
