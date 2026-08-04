class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "203.0+945f69a6"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "69ecf91cce01fe77ce60a1cf4f7c38ce63a26fdeab2e490700a82db68cba8ee6"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "eb5ef3c964fccd088ef2a4e21ca70651cbf65f78bff7e7709e4a06c15db4d6d6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "8eb5b2293fd6ad5f9e6c3dfb164f178f8c642546410f16d857acce2e7cd2b970"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "cfe79204c5eb9731a4a4397b3a8925461ae35baf1a89ed7696cf5a60c59e59ec"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
