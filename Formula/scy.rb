class Scy < Formula
  desc "Scalary CLI"
  homepage "https://scalary.com"
  version "0.0.20"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://scalary-binary-releases.s3.us-east-1.amazonaws.com/scy/0.0.20/scy-0.0.20-darwin-arm64.zip"
      sha256 "cdfa9455c9595fd540ba9d39d677d04e6bfe98adaaf8ddf7258a27c30847f169"
    end
    on_intel do
      url "https://scalary-binary-releases.s3.us-east-1.amazonaws.com/scy/0.0.20/scy-0.0.20-darwin-amd64.zip"
      sha256 "b7991026c7bdfc26d4382eb15f6448f945c5d92767c611dd826d8587f143de7d"
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
