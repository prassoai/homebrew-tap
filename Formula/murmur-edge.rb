class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "304.4+120e0e10"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "4adff2e95ef02ac27b73e3010d9b654b8f9b1b4d64763ce5f2cd956aed091f28"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "d8f8cb5de935992431d09d59dc1b217fd61958a1fbd7dd89564ebf9aef16fc37"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "295c53eca5337647a54aac0aa8618416beebf6f4af6392c500ab415fa6112a8b"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "60003d400bbab9a2b4c0fc29d7a5cb55e3d199065f2f6f8c09dc5be88d2a06c1"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
