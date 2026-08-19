class Scy < Formula
  desc "Scalary CLI"
  homepage "https://scalary.com"
  version "0.0.28"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://scalary-binary-releases.s3.us-east-1.amazonaws.com/scy/0.0.28/scy-0.0.28-darwin-arm64.zip"
      sha256 "5143eeb9c93a42ba9694ef337df4702f35969a858987882cf012aab50e6b9361"
    end
    on_intel do
      url "https://scalary-binary-releases.s3.us-east-1.amazonaws.com/scy/0.0.28/scy-0.0.28-darwin-amd64.zip"
      sha256 "eda5a64a1bd3e0fe54fb9967fca651239c569cc276ee187372ed4e1f13cb01ca"
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
