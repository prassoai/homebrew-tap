class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "224.0+e97b8a44"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "3a930b895fb30e686f85e12c117e3c578ab6b5306be093d7262e1da1a904a28f"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "65e949d3749cff42a7dcd39a7b2ae4ad2bac12237819060da7f79685ef115917"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "ad694bb4b2ba002fdcbcf5ecd7f9d74891e8f6c63b7960a34193e5440df5b687"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "3f6ab5c6efeeb813698c153de8de81e36f37dfc41eba2edb52e43c4c51ef1843"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
