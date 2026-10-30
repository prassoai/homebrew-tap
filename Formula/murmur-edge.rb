class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "277.0+11a1b232"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "6b20f3a3bc7ef275dc62643d45996811c167879a32120e4378a99c47b3d4e85f"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "8e4dc4b436db4fbb4475d5af1f0971c153a2781f61cdb2b67f7d6ba8cbcca5fc"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "baa1396bd4ece5ea3220c24284d5ee319e9f66cbd260a357a2a1162be082da57"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "06c75e9fa3f34a170fd1fadf39faa1c9cefc5c87eabbd4667873fc15e5965985"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
