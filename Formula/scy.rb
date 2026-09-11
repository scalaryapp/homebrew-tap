class Scy < Formula
  desc "Scalary CLI"
  homepage "https://scalary.com"
  version "0.0.36"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://scalary-binary-releases.s3.us-east-1.amazonaws.com/scy/0.0.36/scy-0.0.36-darwin-arm64.zip"
      sha256 "922a728eef78ca45cd4391da21cf43605dde90d7af2c172db1cb6acb335ab9e2"
    end
    on_intel do
      url "https://scalary-binary-releases.s3.us-east-1.amazonaws.com/scy/0.0.36/scy-0.0.36-darwin-amd64.zip"
      sha256 "3edaa7b71adcfdcb2007b657763ffd570ea4c7f8ccfc7dfe3f89bf0f73f216a4"
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
