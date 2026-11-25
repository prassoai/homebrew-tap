class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "328.0+ac8d2ebd"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "003b47c71932cf5a097114933b5c94345dbf5fa421e91c9808f27ae9d735f097"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "68a16d05dafa89ab14c86ca46ba5b476f02307ba5086fdb960a6ce1a1fdc6aa9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "0fc31dbbbde76131d84c676da7f4abea4c8d01977c462bee7dbd98dcaf6b67bd"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "7891058a319dda9b0d34bc6e2b2c1f3a7008c0431cfe6daa45dbf5dd952ede91"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
