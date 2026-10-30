class Murmur < Formula
  desc "CLI for the Murmur agent orchestration platform"
  homepage "https://github.com/prassoai/murmuration"
  version "278.2"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v278.2/murmur-darwin-amd64"
      sha256 "d68ab59ea322fd5031fa841687ee1cbfc7600c9b226e307730156ad856c60faf"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v278.2/murmur-darwin-arm64"
      sha256 "840bc7df2ce95f36d11c053774d6b9c68151430865378b5cc36f3d24a9563276"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v278.2/murmur-linux-amd64"
      sha256 "a7160a7e8693ec79365c7a2c1c3e96b22c20f894a822cbcf40cfb4a5e4b9d565"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v278.2/murmur-linux-arm64"
      sha256 "41f79e04285ba85a1f68ed78c55f7a6bae5cf0baa93e0b2af0bebc4dcca205db"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur version")
  end
end
