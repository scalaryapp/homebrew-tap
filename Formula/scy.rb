class Scy < Formula
  desc "Scalary CLI"
  homepage "https://scalary.com"
  version "0.0.48"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://scalary-binary-releases.s3.us-east-1.amazonaws.com/scy/0.0.48/scy-0.0.48-darwin-arm64.zip"
      sha256 "1c1aee35a39e11802b554bd261ae9a31e0fb1c35356c2c646580333c5222c12a"
    end
    on_intel do
      url "https://scalary-binary-releases.s3.us-east-1.amazonaws.com/scy/0.0.48/scy-0.0.48-darwin-amd64.zip"
      sha256 "2d9a5a365367c9976140c456b295e647a010b0e3cdd70f4518b03c514e4ecd44"
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
