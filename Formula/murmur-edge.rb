class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "263.6+66137ba3"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "2fa69d117af94d92d7a173a9df09d5b5924ee810db768ba27b3a8f06e04311f2"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "3e564ed28397ad25b3b2c08a3cd518664169919998e2eebb6401df22dee53903"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "5f058e39e7eb593f6d27c9f3b73dc5df5c43182f2c169f51be1b50b57aea82bc"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "2bd9d38037edf1be6f03c2bc09090a9b590ddda2d1f96c39d8a2662254a2e51a"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
