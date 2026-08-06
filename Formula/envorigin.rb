class Envorigin < Formula
  desc "Explain where environment variables come from — Docker Compose, GitHub Actions, GitLab CI, CircleCI"
  homepage "https://github.com/FIERsity/envorigin"
  url "https://github.com/FIERsity/envorigin/archive/refs/tags/v1.11.0.tar.gz"
  sha256 "b438a00590e839c0549d2ccc9f6b5c0b71235d2d7ebf241b1ab94047438bfe7b"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    generate_completions_from_executable(bin/"envorigin", "completions")
  end

  test do
    assert_match "envorigin", shell_output("#{bin}/envorigin --version")
  end
end
