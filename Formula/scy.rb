class Scy < Formula
  desc "Scalary CLI"
  homepage "https://scalary.com"
  version "0.0.22"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://scalary-binary-releases.s3.us-east-1.amazonaws.com/scy/0.0.22/scy-0.0.22-darwin-arm64.zip"
      sha256 "121cce993921d446539ada45916dfa06c74814aa5127f611dc00d89b4d5abe27"
    end
    on_intel do
      url "https://scalary-binary-releases.s3.us-east-1.amazonaws.com/scy/0.0.22/scy-0.0.22-darwin-amd64.zip"
      sha256 "d95d7ece11fe926de67f81b3d4c200403d475f1103aac7982ecc2e337e9b3b5b"
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
