class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "261.0+32d0f708"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "da3dca0b3c652ab772b95c7333bb75a0a0ae0973bf47c15997af9b7fee66854b"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "a13beca9e084d061cae1e2fd418e5a10d0b1178d60ce3240575a0bd43196b7c6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "278930f4e3c4aec3dc8dc816700c563e0c6123546d1cb65090efff5dfddbfd6d"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "b2a911e9928be2ff8f29bac014f2a5a88cb2aacd1a79a35fb4bd6b08f4a1fe17"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
