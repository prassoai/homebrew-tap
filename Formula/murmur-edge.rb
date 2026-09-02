class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "221.1+12af58d5"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "c96d281c5bcd483f3b8b20f55854b0f5b6b02da667364b7f1475c33b0732bcc7"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "0a39fad9bcf6fd3c5f10f8d7adc4e353c5ce1fe366bc68ac2f81f13b433ecbbf"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "ee85aa72d82ca6b91b5842a23cbf4d5eaab2af87cf4aa594bf2bf1f9b1339778"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "10e7b55af265bc5d0b7d0dce97af9da88e2d324661f54dc7c7d6d803e73890f0"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
