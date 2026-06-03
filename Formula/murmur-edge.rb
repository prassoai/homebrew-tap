class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "106.0+90791318"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "a33606ac2747dded69e8e42c97f6017ccbdf6f3b47c4bd69a0ba646747b3beac"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "63c877e200ad4c6e2e7c6a69366a6de3b26aef81f0aeebd3f2d644731542b9ef"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "38396ec947e58dab5a2dd2a4d55d4fcd0273b0a86e7ce6578ab1efdac436e7a1"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "80356228ac529d10dbe9c6b85476f13f0f8193c4f2abdb1dbf3db3f3ee8a3e79"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
