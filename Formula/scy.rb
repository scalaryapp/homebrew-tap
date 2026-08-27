class Scy < Formula
  desc "Scalary CLI"
  homepage "https://scalary.com"
  version "0.0.30"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://scalary-binary-releases.s3.us-east-1.amazonaws.com/scy/0.0.30/scy-0.0.30-darwin-arm64.zip"
      sha256 "d10d2c30b2c80e963a92fa56fd91a8b259cfa82ea07bdd2f99bb5394e382f23d"
    end
    on_intel do
      url "https://scalary-binary-releases.s3.us-east-1.amazonaws.com/scy/0.0.30/scy-0.0.30-darwin-amd64.zip"
      sha256 "a899f46829d5e804750167d88f8cf8f267fcc288cd820f721d08e9cedc6f35f0"
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
