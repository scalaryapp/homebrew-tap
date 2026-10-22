class Scy < Formula
  desc "Scalary CLI"
  homepage "https://scalary.com"
  version "0.0.42"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://scalary-binary-releases.s3.us-east-1.amazonaws.com/scy/0.0.42/scy-0.0.42-darwin-arm64.zip"
      sha256 "d99d4d5529124a05830a8b6a92ed5ad5bde154aa71236a581ef090e1a7fbd6b7"
    end
    on_intel do
      url "https://scalary-binary-releases.s3.us-east-1.amazonaws.com/scy/0.0.42/scy-0.0.42-darwin-amd64.zip"
      sha256 "432d312031e3fdd8824f97c6c2a5c596dbd76d35440e005bbbda5eb0fe6d4977"
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
