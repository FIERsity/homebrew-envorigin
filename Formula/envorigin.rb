class Envorigin < Formula
  desc "Explain where environment variables come from — Docker Compose, GitHub Actions, GitLab CI, CircleCI"
  homepage "https://github.com/FIERsity/envorigin"
  url "https://github.com/FIERsity/envorigin/archive/refs/tags/v1.5.0.tar.gz"
  sha256 "75cbe17e61f680d253a76fde0fb23d5c1512a7cdf76186c969271f55fefb0c4d"
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
