class Scy < Formula
  desc "Scalary CLI"
  homepage "https://scalary.com"
  version "0.0.27"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://scalary-binary-releases.s3.us-east-1.amazonaws.com/scy/0.0.27/scy-0.0.27-darwin-arm64.zip"
      sha256 "2315fc748d6d0739987e5328db50bdb30de11cda05518c0225f372dec965138a"
    end
    on_intel do
      url "https://scalary-binary-releases.s3.us-east-1.amazonaws.com/scy/0.0.27/scy-0.0.27-darwin-amd64.zip"
      sha256 "5d87f181077a18b54d50a8fd13f74e2548e10f5e46ac147cd814db2db8b24b4e"
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
