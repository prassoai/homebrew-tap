class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "200.0+e58a89aa"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "85f2a5e0d7b0578f0a9f194a1edeba1dc492789c35ba5883609cafa96d446539"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "1b14f9330a8c4d3d30d1fc7718c1d35ed39ee18da309c83ed3b7c6efb73abf13"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "b204c81d18ba08b476054950b2cc304fdcb22c269acf5815fef5625ddf1da19e"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "114bc7054b1c8d6793f82c0fae1481b3d0d65ae34409f90b13fd01a43bd7ec73"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
