class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "332.0+9f026b7d"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "da0ebf0b25fbf8eeb5c5b84a4ccdb31dfaaf6c1ab1d1d54e340b1ecd1359c4ae"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "261c9772490e6a8405214b9f7869f03b54273343c5f4ad82598b4fcb23d214ea"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "6aae1428aeec7aa6497bbeb6174ed64333c989e6d7613c71da48f635ea7b2806"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "10a021bbcfd7d3f2f7c9cd5a21bc871f415e8dc35445c2b078a2fa79b35cac36"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
