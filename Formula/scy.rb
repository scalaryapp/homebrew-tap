class Scy < Formula
  desc "Scalary CLI"
  homepage "https://scalary.com"
  version "0.0.44"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://scalary-binary-releases.s3.us-east-1.amazonaws.com/scy/0.0.44/scy-0.0.44-darwin-arm64.zip"
      sha256 "827333a9e43fca4d9e5a83e5746248e441683893832ba16445176e8679851b9d"
    end
    on_intel do
      url "https://scalary-binary-releases.s3.us-east-1.amazonaws.com/scy/0.0.44/scy-0.0.44-darwin-amd64.zip"
      sha256 "1a1d9caf1d1ca8a5e29ef2a466cda68ff39ca0648dd035961ef69a44f2f20227"
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
