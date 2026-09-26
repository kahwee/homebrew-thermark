class Thermark < Formula
  desc "Print thermal labels locally without a vendor app"
  homepage "https://github.com/kahwee/thermark"
  version "0.32.0"
  license "MIT"
  depends_on :macos

  on_arm do
    url "https://github.com/kahwee/thermark/releases/download/v0.32.0/thermark-0.32.0-macOS-ARM64-ble.tar.gz"
    sha256 "f6abac76c5b359d35f2a9a2c69838b87951f175a9de429cf8998e735913fd4e5"
  end

  on_intel do
    url "https://github.com/kahwee/thermark/releases/download/v0.32.0/thermark-0.32.0-macOS-X64-ble.tar.gz"
    sha256 "b642fd41b9e3e70f98d4789b53b5664020e62428ba22e661c932d5ee4cff4a4e"
  end

  def install
    bin.install "thermark"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/thermark --version")
    assert_match "55551a01011aaaaa", shell_output("#{bin}/thermark encode 1a 01")
  end
end
