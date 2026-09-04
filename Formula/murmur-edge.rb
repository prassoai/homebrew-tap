class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "223.0+95a0dcf5"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "400a8c1e2e6c3815df60d9a6e94612be9373f40d670eeac09da7cba440718288"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "8ea77c0498eabddde2f8229ea11f8f1e857a50f0e6d8c550de99347f2dc20715"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "20e2ef44e92f773cb50125041dfd60a2a3c3d7de4fa2e02671e7144bae2d803c"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "1419f19c7aea24c8fd64d481fb8c2fa8f1feabfb8819cb800d5ce33bf291a9d3"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
