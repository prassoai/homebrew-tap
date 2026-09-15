class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "229.5+a7048943"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "f395a8bf3d49092f1c704d8bc1aa1ebd13879a29c4679595225e1594c45f991b"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "72d46e1f18f29de3b2dbcd6fdb72df95c698d704635ec28a8fd46adcee1dd4ed"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "590a56f1d0ba8f68b4976a6554635f0a92d14cb9d86cea20ee5f6d77c21d2f83"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "036bd7f1710d958d5a3a84f2f5e5acb78775cc7d8cdf9539d77db78ad44dc6be"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
