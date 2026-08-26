class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "216.2+ad03f03e"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "394d29cbe1e57c59f9e83815f22d31d1d59ff31899455acdadd9585043a06df8"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "7ff48c87466bce0ab5a9ebb9e34704b49f3a3b85c2045df92bc2ac4a1829dcc8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "4c47d6a821e3ed17f5d7cbd7c47567c3a6a37853564d3097cfeefa6ba2cd4573"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "dba79bd4e16e3d6b0b223cb2f619ef0cbd62c6afa03b3e9d033f5debf1ce8485"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
