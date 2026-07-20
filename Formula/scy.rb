class Scy < Formula
  desc "Scalary CLI"
  homepage "https://scalary.com"
  version "0.0.19"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://scalary-binary-releases.s3.us-east-1.amazonaws.com/scy/0.0.19/scy-0.0.19-darwin-arm64.zip"
      sha256 "cc1b2ea9304ca72664a28718f3a11f0b6c3d09c7910a93307706a70f550ab65d"
    end
    on_intel do
      url "https://scalary-binary-releases.s3.us-east-1.amazonaws.com/scy/0.0.19/scy-0.0.19-darwin-amd64.zip"
      sha256 "3cefea636fc1e8850c11c6b0375aaec7411175b38f73dff4068f305f63489db6"
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
