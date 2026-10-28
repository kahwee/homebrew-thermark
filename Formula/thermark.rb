class Thermark < Formula
  desc "Print thermal labels locally without a vendor app"
  homepage "https://github.com/kahwee/thermark"
  version "0.36.1"
  license "MIT"
  depends_on :macos

  on_arm do
    url "https://github.com/kahwee/thermark/releases/download/v0.36.1/thermark-0.36.1-macOS-ARM64-ble.tar.gz"
    sha256 "99d6e4c12de45e4fd0db7a29f5e9d37c9a96b5a7cd398f115d0ed4de6aa971bf"
  end

  on_intel do
    url "https://github.com/kahwee/thermark/releases/download/v0.36.1/thermark-0.36.1-macOS-X64-ble.tar.gz"
    sha256 "f244ff38bddd566d4155fc505d686c665e3e5aecdb9fd9701e66c08862a8cc2d"
  end

  def install
    bin.install "thermark"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/thermark --version")
    assert_match "55551a01011aaaaa", shell_output("#{bin}/thermark encode 1a 01")
  end
end
