class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "318.0+faa959e6"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "942d769d8d8cd89ba71c6220737b3902cf924ff833bf934ed0d0b2b09c706122"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "0b39509c9119b157eedec8ef9c58c874c6feb9d4a42d880f6d563cb656c30b97"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "5bfc7ec2966ddd3b4674b674fa914b19fae8dcaf7c4b53b1b67382fa4f975403"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "ad0cd3e8248f8c14dcd9232fbeb717963e4e89346adcd2e4c96f18d2fdf3a4ac"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
