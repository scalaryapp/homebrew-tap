class Scy < Formula
  desc "Scalary CLI"
  homepage "https://scalary.com"
  version "0.0.43"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://scalary-binary-releases.s3.us-east-1.amazonaws.com/scy/0.0.43/scy-0.0.43-darwin-arm64.zip"
      sha256 "5886c9983de70de7b7aeda018de470a262845b12177895ff9acf938689e19b4b"
    end
    on_intel do
      url "https://scalary-binary-releases.s3.us-east-1.amazonaws.com/scy/0.0.43/scy-0.0.43-darwin-amd64.zip"
      sha256 "db8f43258ea9749d408676c11410a2a3f68eeab055c8aa851f7d6362b3d3f5de"
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
