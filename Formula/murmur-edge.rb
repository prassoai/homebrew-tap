class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "131.0+74bb3b06"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "b6b7c394b90c4e0f44e5486029d890b19ed1bfa38a2c8a8f2a776e6fe09243e7"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "875482c4d84a966fdf3af7bc3344784356e390eea7f510647e88ff98615bd9fe"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "5d97caba0b1b677e5d6cbc380542c3f21b36f123e143307cbd94df38d7bdeaae"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "b9a555b5940cf1783a1f9bdb9e69ced7a5927c2ec3d8fb74d9dc5b56b343c4b3"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
