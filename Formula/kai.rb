class Kai < Formula
  desc "Terminal workspace manager for AI coding agents"
  homepage "https://github.com/c4iov1/kai"
  version "0.1.0"
  license "AGPL-3.0-or-later"

  url "https://github.com/c4iov1/kai/releases/download/v0.1.0/kai-macos-aarch64.tar.gz"
  sha256 "12110873136f6ffbb69446287043e8f329f3fc879071bd38c3c18137be89b874"

  depends_on arch: :arm64


  def install
    bin.install "kai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kai --version")
  end
end
