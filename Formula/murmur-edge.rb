class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "119.0+8fd4b4d3"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "447bb3e2e11e4ed5db518b77e064d8d72037d5e23bbeee81a5734add0ffda6a0"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "8964e36093bd11b70606b8bd7092149ff3f6ce57f9c64ddc2b5373efad11d172"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "f8fb448fb1f5bb2c2697d5dd3a3c24c4ab189c316b4f1532d8997dc62f4605aa"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "2e2ea56af7fe1aa02c56c3200e78214b1ad52e35a6966a05db3a9462fe32a416"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
