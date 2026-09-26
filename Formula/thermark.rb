class Thermark < Formula
  desc "Print thermal labels locally without a vendor app"
  homepage "https://github.com/kahwee/thermark"
  version "0.33.0"
  license "MIT"
  depends_on :macos

  on_arm do
    url "https://github.com/kahwee/thermark/releases/download/v0.33.0/thermark-0.33.0-macOS-ARM64-ble.tar.gz"
    sha256 "813b20a138b7558dc2fd7229716ff6ab484cda896e8d0e1051aaea266ecf5606"
  end

  on_intel do
    url "https://github.com/kahwee/thermark/releases/download/v0.33.0/thermark-0.33.0-macOS-X64-ble.tar.gz"
    sha256 "00510f0dae5fff67a1184d8e66a72c1b27aebb555509e31159208e86dfc4ee8d"
  end

  def install
    bin.install "thermark"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/thermark --version")
    assert_match "55551a01011aaaaa", shell_output("#{bin}/thermark encode 1a 01")
  end
end
