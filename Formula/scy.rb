class Scy < Formula
  desc "Scalary CLI"
  homepage "https://scalary.com"
  version "0.0.21"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://scalary-binary-releases.s3.us-east-1.amazonaws.com/scy/0.0.21/scy-0.0.21-darwin-arm64.zip"
      sha256 "44d229b389d5c456dfd9ad4c24b52f6a97e0e7cdd50baa68c3dbdc3c942f7ba8"
    end
    on_intel do
      url "https://scalary-binary-releases.s3.us-east-1.amazonaws.com/scy/0.0.21/scy-0.0.21-darwin-amd64.zip"
      sha256 "bc4090ca9c347350d6bbb8a64ad216edecab39fa335df48fb2b859c6cdc50aa4"
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
