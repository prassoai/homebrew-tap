class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "173.4+dacdd429"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "330a1b234b3a17071be5b1a0f1163d22106e20fac11cf3cd1a0533b9d1daaf51"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "0a0e0aa90a0662079bcae09dbb0a1a914e1e099923b54fce961f1a4c190a190b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "82c4b3d5f3dc5d6831e8ffee676fa0f96bd44f7d30dbc98c9f1da7a0ebe2f389"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "067e408538a739de29e1547ae916c28c5b93fcf54f10390d1d4ddf4dc079b698"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
