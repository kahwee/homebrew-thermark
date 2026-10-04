class Thermark < Formula
  desc "Print thermal labels locally without a vendor app"
  homepage "https://github.com/kahwee/thermark"
  version "0.34.0"
  license "MIT"
  depends_on :macos

  on_arm do
    url "https://github.com/kahwee/thermark/releases/download/v0.34.0/thermark-0.34.0-macOS-ARM64-ble.tar.gz"
    sha256 "295f3d7fe994f21cc07ba76937a1aff22eec8b3acc54b66e6cb7e07628693e2d"
  end

  on_intel do
    url "https://github.com/kahwee/thermark/releases/download/v0.34.0/thermark-0.34.0-macOS-X64-ble.tar.gz"
    sha256 "751587b3d0bac52c69a94f805390918b4237b43613146f32e265babaf7ee2199"
  end

  def install
    bin.install "thermark"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/thermark --version")
    assert_match "55551a01011aaaaa", shell_output("#{bin}/thermark encode 1a 01")
  end
end
