class Thermark < Formula
  desc "Print thermal labels locally without a vendor app"
  homepage "https://github.com/kahwee/thermark"
  version "0.36.0"
  license "MIT"
  depends_on :macos

  on_arm do
    url "https://github.com/kahwee/thermark/releases/download/v0.36.0/thermark-0.36.0-macOS-ARM64-ble.tar.gz"
    sha256 "aa5a71dc0a3b0d078c44afd3edc30764e0f3514e709309b3c272165575fd31c1"
  end

  on_intel do
    url "https://github.com/kahwee/thermark/releases/download/v0.36.0/thermark-0.36.0-macOS-X64-ble.tar.gz"
    sha256 "79d8eed16151a70f35404d0893957afb5ae3ce6cfcdcd51651f3bac3b1d3ecdc"
  end

  def install
    bin.install "thermark"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/thermark --version")
    assert_match "55551a01011aaaaa", shell_output("#{bin}/thermark encode 1a 01")
  end
end
