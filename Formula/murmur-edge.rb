class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "275.0+dbc247fa"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "d17e9254fb4d7bc72380bfa7d1db10b31d5446e8635a8f9a3c2586c61cb91be4"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "ae3ac3d5ecfc4a5b162fcc74e38e4b92cdc37a0fa1a7322d53c55f2d770beb2d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "22fc4794cb802d0ae6cd6481b14978c1da6c2738a992a5541a5e137cdcc52fa2"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "55a845419fe38d6200d75bbbc37da0d704109f6f21e2791be38ce43eb2e66eee"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
