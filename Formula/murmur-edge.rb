class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "152.0+cd0adfd4"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "095fdab404832a46046e873ab892a235026b3410a3e3be9b75236146de3295ad"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "54ebeb783a1f103850d5260693ecc4a7fda2a5ac0a80c3cb921dd8b91037e875"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "f324c2c906e6ffa1688d7cf4816d6e94e8b92b56d2f0be9e8ee7958e84243e9c"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "06ee1a48a72d4bce4fe45594edaa932c99ee9ddc5987b8fd1f1c4fc83f6758db"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
