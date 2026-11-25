class Scy < Formula
  desc "Scalary CLI"
  homepage "https://scalary.com"
  version "0.0.47"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://scalary-binary-releases.s3.us-east-1.amazonaws.com/scy/0.0.47/scy-0.0.47-darwin-arm64.zip"
      sha256 "2d994c3957d5382fa335955de16cb7e81d129eaca66cac2978882a347a10fe42"
    end
    on_intel do
      url "https://scalary-binary-releases.s3.us-east-1.amazonaws.com/scy/0.0.47/scy-0.0.47-darwin-amd64.zip"
      sha256 "c37a42c5fd85c5a8365f5b162e37da9aa1e69492a6358582a006dfd4addf8e9c"
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
