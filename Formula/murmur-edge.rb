class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "283.0+7591c4a5"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "7bd0d3ef5fc7502834818b4dd1bea60c1e2a9d01d27d7b77b28d436237b91e7f"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "f68013b5a1f6a83274429b928127924413a79d9d02ab2b2a2c47237a3d0fe7ad"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "03f3c56b393fa8bcdb6f6e3f27691b9b1428d96763362fda5b05d6fccbfb2306"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "9a81c365332b05deb4a1a61c07e4d781ab81eac3fd900913fc4595a2b272da00"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
