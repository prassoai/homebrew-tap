class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "106.0+ba69d208"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "bb82fd5b0216c0e57d46bad1c9fd683f95309d5e936d5dee73eedc2c4d1446cc"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "c4bb21c8a97e1f996cdf983cc2db8d0467c4fcb8777ebff6bb2267e00e250200"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "50e6d42bb742a781d3ec146e1326ffef506017c5c63fd139dfa8d0226b89e955"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "ddbdfec398fafb8c23da4675ca0368e1f7f8031d68b0a4c0feb83090681968aa"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
