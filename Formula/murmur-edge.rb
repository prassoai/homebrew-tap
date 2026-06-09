class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "131.0+be08cb01"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "0177d61fdc784ad8aebc2abb23115df80383ee2d06fd3399efc277f1ec513f1b"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "7c4e91d3f2a36f92ea0a5dc5b53c97bba85c41b80053f61556536112c30dc96c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "3bb6398d9aa0dfd277c0bdfc3d3d71d2b5c3ed8ce623f9ca9d43cad96634af37"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "4df53aa38c3f638311690ae0a70023a7e64ebf8aeba8fc69040cb582b8a38447"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
