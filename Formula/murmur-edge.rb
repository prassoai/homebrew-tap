class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "322.2+7bc1f652"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "b3bb96449e04b38ad671277763cf87ed27f2fc08109c58a683b7fb1aea34377e"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "8fd6f07b46e7d9a5d7c22265264a99585696ebd77a3f6cae3df3e468be4c66aa"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "25166f7c6efa5a2f9e3c5524f46b0b2bc25d4b9bc94af6b6704360646e6d4689"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "eff7c2deccb6762ccbff5c729b8c0a94962462b99c5a3f8c332ecb2d0e1da63a"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
