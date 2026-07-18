class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "175.1+015d9b26"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "70a7aebf2641c892c51dc694ad1c4b4a7933c8cc33f3bf805db2941c81e22af3"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "f37c6debe07e4cadbce9b48f8f701774a3d23c5b61797835fc3b34971b2d5b66"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "347c574cecb60bf384d6cd7c4dc2ace446d41ca95692b715cc60290ebb7b4051"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "7fe76f5f0ed945af524f07e697a3cfed631b68a0d4723b6fc82f9bb091a4e2f2"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
