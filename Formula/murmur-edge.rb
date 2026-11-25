class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "325.1+a7b90f78"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "721e8958281c03d0bc9dec2ed0a01d3396d8e79c94ed87dd13500b3c4dd1af1f"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "86bb957b38a12a6668e2b0157a602401b837bbbdae19f89fa8305f795264ee35"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "491b44a6c4fbb596716225fb14af630a1fba0f0a1d2c3d929722c9b5d6b842e6"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "d8d7f5f193207f4eb943feda5925f3d2ccf53a0350b009d3f0e5de615f61e55e"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
