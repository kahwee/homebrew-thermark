class Thermark < Formula
  desc "Print thermal labels locally without a vendor app"
  homepage "https://github.com/kahwee/thermark"
  version "0.35.0"
  license "MIT"
  depends_on :macos

  on_arm do
    url "https://github.com/kahwee/thermark/releases/download/v0.35.0/thermark-0.35.0-macOS-ARM64-ble.tar.gz"
    sha256 "bad0f08e004b27befe54370478999169163bce8b0de3e8b79c1efd991772d727"
  end

  on_intel do
    url "https://github.com/kahwee/thermark/releases/download/v0.35.0/thermark-0.35.0-macOS-X64-ble.tar.gz"
    sha256 "fce87f5fc90a4670adb10649ce1310cb755ad0b7981a9b48da1fc6d3e0fec451"
  end

  def install
    bin.install "thermark"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/thermark --version")
    assert_match "55551a01011aaaaa", shell_output("#{bin}/thermark encode 1a 01")
  end
end
