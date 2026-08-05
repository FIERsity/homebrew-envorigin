class Envorigin < Formula
  desc "Explain where environment variables come from — Docker Compose, GitHub Actions, GitLab CI, CircleCI"
  homepage "https://github.com/FIERsity/envorigin"
  url "https://github.com/FIERsity/envorigin/archive/refs/tags/v0.6.0.tar.gz"
  sha256 "754c2c1f35b895ef13ca53b8c0c9fe18f44b886010c721fd538344dd0db2941d"
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
