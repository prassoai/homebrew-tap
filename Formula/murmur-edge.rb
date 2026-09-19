class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "232.0+d537170b"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "a4a7f2e3200e62ecc80fefea19ce4f2efd6dc9b63d4b1f73b0db6d07830b07a3"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "dcf129ac96fa87a31ad8ca4b9e2afd1a2e5600a3a6575ed9e779f1a013117dcb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "ae749220f4c1bfe3ec25c5a77548a24ac46df00e040dd35b6956463e61f7848b"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "c8cd2649e81e0ed9f49ba7e5aefa78cf73ed35ad38a3398f1a54432f513afb0d"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
