class Scy < Formula
  desc "Scalary CLI"
  homepage "https://scalary.com"
  version "0.0.39"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://scalary-binary-releases.s3.us-east-1.amazonaws.com/scy/0.0.39/scy-0.0.39-darwin-arm64.zip"
      sha256 "0af284e4b1967e5f8e8fdf009b133fcf1f47f646da17fdd046337b8f78c31401"
    end
    on_intel do
      url "https://scalary-binary-releases.s3.us-east-1.amazonaws.com/scy/0.0.39/scy-0.0.39-darwin-amd64.zip"
      sha256 "744ab4ccbf10dfbb5c8ac79d9c61e6c6363d8990becdfe74c4bcc2f3038592d6"
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
