class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "215.2+700380ca"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "db825117d8bb891042d7ab994ad3945f02873d83f1daa104040f06b1808aebda"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "b72d1608e3d92a7110b4b7c0f6f30b14551cc57bf1be5dcf4fb3b2eb36d68201"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "a80753e9c773b2f9768a822b2419df2820bca1378b3778ab0a8436fa2c8ed6f8"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "06f22cb1cde1116a4a11e4e27cfd6bf7df80bab9f6b5e86e5bce5c0dea9d3d4f"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
