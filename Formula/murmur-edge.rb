class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "232.5+08937c8a"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "18930a9d5f1185404d8b4a1ada285ba68d62b9b97ce76c2ddcb3382d29a18a2a"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "3a43121d4025b06fbfea46c3da32d14d5dbf03a93ec115b4823ff9753809b97b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "657bf31e3ddfb2f7b8c56b68c2ab9d94b0b9ed76d9c22c28bd99b58f4bf5eaf7"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "00de336cb6b3a91d1d46251eeb62d06b7175b9780575395b482da4dd47cef5a5"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
