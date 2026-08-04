class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "201.0+4fdeeb73"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "af9cb59c4a8dd2d75f3c86262488c6f6d7380750548b5e6c199c30ae5dd6b8d4"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "f34a22f452bb4b8613aac4fe3fd9689314237b4a841c32fa5627107ca8bfc908"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "aeac8726180d0d3ae7f0829f4c5ee39c8a33fb4b5f7dcd9e291a1b725b90c42f"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "a875a5cd85de8ca8dd6f77b3488d2c8ddfb9cea2286bad35acea5bfd2bf46d92"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
