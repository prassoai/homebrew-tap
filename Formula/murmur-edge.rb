class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "226.2+09a0f725"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "7566abd2a49e676f4c285944a332f3ac39139c8dfbcdc82bdfe6e94c6da79876"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "6dcd9fb8c64b60404a7d1abca8b808e39ea944ce4d47ae477a1b93ee32d9faad"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "fe3203879f99fb95f69658c0c232c02c19a6a1ab3944be3f052a341d201c7347"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "2f6971f106a41fdb30bd69c3d19264cad6f51c45b71b6728a4ed9fa2d7c73d66"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
