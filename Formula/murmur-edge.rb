class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "191.0+6c9d328c"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "330b4d26c78d0a9ad3e2df02faf3d1ecb6322f011d0757dfd2d4c8d96a726945"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "39dd62b252d2b8a79d29b1e25a564737a4caefce4e541c02f4346d0b0ae76431"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "d89d1d393a3c7cd2fa0f23e4f280a3d068ea2d8f2f0114bfe527e0784115d6df"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "35465d130d025e6ae9ebbfd1b888eb2916a43c240da5965a395434e51c776566"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
