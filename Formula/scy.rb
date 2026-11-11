class Scy < Formula
  desc "Scalary CLI"
  homepage "https://scalary.com"
  version "0.0.45"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://scalary-binary-releases.s3.us-east-1.amazonaws.com/scy/0.0.45/scy-0.0.45-darwin-arm64.zip"
      sha256 "4682765b6c8259886d190dc9bb6de75653e6e0a67f9515984cc6ec84f4e9af37"
    end
    on_intel do
      url "https://scalary-binary-releases.s3.us-east-1.amazonaws.com/scy/0.0.45/scy-0.0.45-darwin-amd64.zip"
      sha256 "2f3b76913a41741d42e4befc427487332420cae577bf1db831512dc8631465c1"
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
