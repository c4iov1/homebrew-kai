class Kai < Formula
  desc "Terminal workspace manager for AI coding agents"
  homepage "https://github.com/c4iov1/kai"
  version "0.1.0"
  license "AGPL-3.0-or-later"

  url "https://github.com/c4iov1/kai-releases/releases/download/v0.1.0/kai-macos-aarch64.tar.gz"
  sha256 "4525b9d9422024a2f146bfac3349a193429ad5cd0767d31575f1c7716790b9be"

  depends_on arch: :arm64


  def install
    bin.install "kai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kai --version")
  end
end
