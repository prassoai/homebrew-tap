class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "192.2+3fcd5f18"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "950a5b903b7756c796cc36907fa7d9ca46922de15afba96638bf232d5de6d6a4"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "350aaa4697502b34b095f3d9e4cf7318c21ef7c7b9fa8b0abae7a6d7e3e032b4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "15543b937ae4aea764a86f4de117aca75a6972e728ced4aad4e81f669f49db2a"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "502f94f59d06e1ba35d7b6a3ded31a1dc646c576ab1d08f2bddd0da8db0dd002"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
