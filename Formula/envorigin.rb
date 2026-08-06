class Envorigin < Formula
  desc "Explain where environment variables come from — Docker Compose, GitHub Actions, GitLab CI, CircleCI"
  homepage "https://github.com/FIERsity/envorigin"
  url "https://github.com/FIERsity/envorigin/archive/refs/tags/v1.9.0.tar.gz"
  sha256 "cd2a74dd6728cf2a9c457e19007543026403fb5b4fcebc8084bb91e5e59c4b06"
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
