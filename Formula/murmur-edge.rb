class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "234.1+80eaf5dd"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "667cc4ac50133e2bd980867c737da36abb3929bf6d33938a5ac55d081dc582ad"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "2ad4a01c4f7d5688dfe1fd2dadd071cf789bf621fe8251daca7dfce77e0f7889"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "ed2cb00f5b7a8ee9c05c9bbd151d661ac90a46164e5719193b9b70793d7a506e"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "5ecc47fe55bbc9c5c1cfdecbe2a8285f97d047d5fa38b1f074a285e9aaa0eb26"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
