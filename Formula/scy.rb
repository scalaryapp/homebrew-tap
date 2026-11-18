class Scy < Formula
  desc "Scalary CLI"
  homepage "https://scalary.com"
  version "0.0.46"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://scalary-binary-releases.s3.us-east-1.amazonaws.com/scy/0.0.46/scy-0.0.46-darwin-arm64.zip"
      sha256 "02a45b865030ed0af3ebfc176f097149136a40a843e156724e9b7a5f51019c34"
    end
    on_intel do
      url "https://scalary-binary-releases.s3.us-east-1.amazonaws.com/scy/0.0.46/scy-0.0.46-darwin-amd64.zip"
      sha256 "a7f2a03138277832b64b84439e68118f17cf73065b6b57059805e704f2a38905"
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
