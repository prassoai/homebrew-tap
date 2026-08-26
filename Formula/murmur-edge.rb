class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "216.2+8f54b89f"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "85cfd2d8734db09b7d11dfb53cd80902926a2d495d86db7fc91cbf1d16785c36"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "bb15c67fce9891f42be4801ff3f6f3ce265c3c3f2a0df9d059cc49ecdcd6f0b1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "2934b424449f5b5321cb67c3496178c774b9aaefb92180374dffd242e5cbea13"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "508c07a29ac58628ce0e4cc8a5af5a7cf1c9c29eaf0b81b2eb3bf3cef34d3233"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
