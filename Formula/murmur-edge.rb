class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "153.0+a1ed8cbc"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "436e4c8a85a31941bc94e9a83f2180c4c63001b5f7eafaef4fa87d1e14bb4d25"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "404f0c706835c54d2008e66d1ecd8964f4baa78c9f90f7da74904d63fa085b79"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "9b589d16b172f1846094e24e3f239e181f898d9d103b5cb04bec05f4730b4129"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "51c2f2e9619d7c987fb70c78e6de1d837570537e12bc1c3f7bd15a5ede5b691e"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
