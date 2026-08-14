class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "212.0+a12dc6b3"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "159b8040484e1b1e4ec0198ef5b820535fcb4271d34a9f7fd5e54f4eb6c5fc01"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "3d7146a0cf6bd0f342b1e0a29fddddba1b29aeaed91b4672631ee8a9b103d69d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "85b1e1649b5e2d186d2ce926378d1da8f0f2fbd9a3a7df3d2493e2388dc775d1"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "33b11fab8e1ceb5e5d6878d5f4281747a873e0c9d36a38b0d577f55c6f8aa426"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
