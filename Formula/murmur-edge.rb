class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "326.0+a5d64588"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "5299e456eeb1cb6c7cb9058c8a2b904a124981ec0c77c4853e779dd4f4960e32"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "c8c80a7fac5ba4bce3dba4e25ca980ab5bb0ce80183d3b8ecdf5f7c16c25e908"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "30bc92ce26c25fa2e76769666fe4eed6114cdb5f34544f18a221c4c0d9a9f1f8"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "9260c01f32a5a3acfcba452a3f3d4771e013e1a15da2cbe2137a1c64a8f38049"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
