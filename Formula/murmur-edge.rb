class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "227.2+81128191"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "7a2d1209c1941a343a675b385483fab6efa8e73f159f82a31670ba863c6f3b29"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "16b96288570a0b15fe8f0d7de8cfb601af1a230d06193b537342f7c59ce04186"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "5fc718a4fdd0a6e2b0d60a26e1f20418dc0759bf55eff8a500fd35ae4e18eb50"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "19db63ce78803952ab63d2b9f9d02cf286dadcbcdfff69f66ce6b22a6e1dc5e3"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
