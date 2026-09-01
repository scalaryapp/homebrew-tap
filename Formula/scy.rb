class Scy < Formula
  desc "Scalary CLI"
  homepage "https://scalary.com"
  version "0.0.33"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://scalary-binary-releases.s3.us-east-1.amazonaws.com/scy/0.0.33/scy-0.0.33-darwin-arm64.zip"
      sha256 "a94e7313ac3c27dfee853f988e8aee4ab06b10dbdd6a973435d9deed60468156"
    end
    on_intel do
      url "https://scalary-binary-releases.s3.us-east-1.amazonaws.com/scy/0.0.33/scy-0.0.33-darwin-amd64.zip"
      sha256 "dca48edf3170a2e33e7056816c7b6d0e58239c50131c1200f8e9a964190e61d1"
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
