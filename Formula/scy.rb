class Scy < Formula
  desc "Scalary CLI"
  homepage "https://scalary.com"
  version "0.0.29"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://scalary-binary-releases.s3.us-east-1.amazonaws.com/scy/0.0.29/scy-0.0.29-darwin-arm64.zip"
      sha256 "516fac498a6c7d8d67592a5c6e8a210a686bdbd702d2471fe2310d4982f8b65c"
    end
    on_intel do
      url "https://scalary-binary-releases.s3.us-east-1.amazonaws.com/scy/0.0.29/scy-0.0.29-darwin-amd64.zip"
      sha256 "a35c8add7b092ee62e83758b16b2ff6733e74a572cea1ed25e41a58c6f1117fd"
    end
  end

  def install
    bin.install "scy"
    bin.install "docker-credential-scy"
  end

  test do
    system bin/"scy", "--help"
  end
end
