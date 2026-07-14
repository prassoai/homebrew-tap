class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "172.0+16ecf7d9"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "b5f41cbb99432a827a0ae9af4e367fb6fa14a3ccf9d594c9bc6c019f42dd09dc"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "b808a2192baeae596e4f69af8e2ecab5d39c734429162664fb808baa4a390dde"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "78078d8bfd3c51fe8f5a14ff6373f2913175d5fa251d722f40cc49ebe10c3512"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "a14115b9c07776d1ed6eb5bbaf8da882518fc7c38dfdb8d94d25864e9b4f5ece"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
