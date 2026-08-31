class Scy < Formula
  desc "Scalary CLI"
  homepage "https://scalary.com"
  version "0.0.32"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://scalary-binary-releases.s3.us-east-1.amazonaws.com/scy/0.0.32/scy-0.0.32-darwin-arm64.zip"
      sha256 "4ac34230620b0456b0a6aa11f8898390ac3759743e4a5da89dee874cd90a5963"
    end
    on_intel do
      url "https://scalary-binary-releases.s3.us-east-1.amazonaws.com/scy/0.0.32/scy-0.0.32-darwin-amd64.zip"
      sha256 "6ebf55550e9a1ee973998e1af4d41e7ae10f0ae4afa57d153881ab6b1d9284c3"
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
