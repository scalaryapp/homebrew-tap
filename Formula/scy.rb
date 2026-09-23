class Scy < Formula
  desc "Scalary CLI"
  homepage "https://scalary.com"
  version "0.0.38"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://scalary-binary-releases.s3.us-east-1.amazonaws.com/scy/0.0.38/scy-0.0.38-darwin-arm64.zip"
      sha256 "8f0fc2a308fd03a6689b35ad5077ffaf52acf317868d87360e509e3970d6db9c"
    end
    on_intel do
      url "https://scalary-binary-releases.s3.us-east-1.amazonaws.com/scy/0.0.38/scy-0.0.38-darwin-amd64.zip"
      sha256 "c685e84624899171a4454ff4834b66a73fab23d56e6a513805c13ed834e6328d"
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
