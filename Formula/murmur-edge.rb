class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "250.7+a4bcef21"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "d0f4d57fbc9b6fbe27daaa8c0d6392acb4c6a2e47ff4e87bc647eca74a9d3dbb"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "556f119a5d5a2f3fa96527f94f10b18e2857a7d96812d902b21a10ab17c90939"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "6cb54506edef3117bfbf8e778f67d73ea332c1890ff8ce809f95db603f080bf8"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "067750cc239bf2c276e26b65cd41cc8620c944f9d20a12357d28bc1e6fb3e5ff"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
