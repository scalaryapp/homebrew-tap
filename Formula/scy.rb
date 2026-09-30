class Scy < Formula
  desc "Scalary CLI"
  homepage "https://scalary.com"
  version "0.0.40"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://scalary-binary-releases.s3.us-east-1.amazonaws.com/scy/0.0.40/scy-0.0.40-darwin-arm64.zip"
      sha256 "2a4d391dcbd89b8db411a54983882ced1a2365b24a1536f61c38868fab389da6"
    end
    on_intel do
      url "https://scalary-binary-releases.s3.us-east-1.amazonaws.com/scy/0.0.40/scy-0.0.40-darwin-amd64.zip"
      sha256 "f51c9c565ae5f2cb1289a90c64ebc76f2ef864a78cdd891e815884a888448d30"
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
