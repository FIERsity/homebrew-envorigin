class Envorigin < Formula
  desc "Explain where environment variables come from — Docker Compose, GitHub Actions, GitLab CI, CircleCI"
  homepage "https://github.com/FIERsity/envorigin"
  url "https://github.com/FIERsity/envorigin/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "153fe320a63047f75652482b685bf8f7fa25ca6e671f3ce5f046af69cadc7331"
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
