class Scy < Formula
  desc "Scalary CLI"
  homepage "https://scalary.com"
  version "0.0.41"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://scalary-binary-releases.s3.us-east-1.amazonaws.com/scy/0.0.41/scy-0.0.41-darwin-arm64.zip"
      sha256 "28f45730914f803c73c09f171fc5b25f4010401d8f13ed4dd98a98baa7706a0e"
    end
    on_intel do
      url "https://scalary-binary-releases.s3.us-east-1.amazonaws.com/scy/0.0.41/scy-0.0.41-darwin-amd64.zip"
      sha256 "c87b0018671a643310626646940c12a6e49f981559309933bdbd8d02cc1abbe1"
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
