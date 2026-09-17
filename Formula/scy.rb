class Scy < Formula
  desc "Scalary CLI"
  homepage "https://scalary.com"
  version "0.0.37"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://scalary-binary-releases.s3.us-east-1.amazonaws.com/scy/0.0.37/scy-0.0.37-darwin-arm64.zip"
      sha256 "4c7e611ba1fbd988157b5e3435844bd6cd3cd621ed798638a25f58bb0eb8de70"
    end
    on_intel do
      url "https://scalary-binary-releases.s3.us-east-1.amazonaws.com/scy/0.0.37/scy-0.0.37-darwin-amd64.zip"
      sha256 "50c5701ffb56f8391a0eb9cbaf97a0366fccfad7fa1351fbceb677669dcfcd0b"
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
