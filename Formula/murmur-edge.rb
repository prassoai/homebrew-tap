class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "165.6+6da7df70"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "a3c63cc444c4bf716ffdd6287d8b476e62b57be42f3d848d5dd8480bacf86003"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "2e090683d95f2c65d2d893752fee280e7e45f55d1e41a4fc8433db36c07aff80"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "d2c94301205654db6c0c2954ea3c8c95f84a0214ab0b2306dd3e1b843e8d5a64"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "79e99a5e6a43f71e08341e0bfc4ecfc51d3fe2083631d68bfd0a477c3d2fb9f1"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
