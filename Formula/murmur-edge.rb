class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "165.1+e171fec7"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "601b06f7a9cccbaf8db318499d49f4a5fa0d8b2ad1668f7295d79cdc52aa4d26"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "64d33bc651b064e9179e6c5c36d54eaa8449ea84f6e17681c143fdf1b5fa7050"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "30f6ba9401d32d886990a5a37ced0428b87408dd820dea9ede0c8780efb6dc8f"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "c62119f5c2dc5a2163f64f9d4e9320ad33c5323d33b95d6ca950240a637cbc6f"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
