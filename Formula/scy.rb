class Scy < Formula
  desc "Scalary CLI"
  homepage "https://scalary.com"
  version "0.0.31"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://scalary-binary-releases.s3.us-east-1.amazonaws.com/scy/0.0.31/scy-0.0.31-darwin-arm64.zip"
      sha256 "384c3f9184c5a9657bf9f2d8c4009edb9543f92a65d03b951fd8882245d33032"
    end
    on_intel do
      url "https://scalary-binary-releases.s3.us-east-1.amazonaws.com/scy/0.0.31/scy-0.0.31-darwin-amd64.zip"
      sha256 "54ea04d73e27db147fd696c56e52a22ede9c6b13b342459716b4056c5c0d0bd2"
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
