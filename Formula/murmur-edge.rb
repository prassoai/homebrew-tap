class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "127.0+74dd954e"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "608d67bdfcce4c4342384de67a3bed7b6ece3c58af238ffdb937c7e4425f6792"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "111eba3283bc7583b4578838a4d0de7d9ceb7cd4fc7ef6c556e2d72d791651b2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "12245d4a6f8fe8c2c4fa32edf7294f3b39dd8ff2e0fd0079b2ba4c3bf1c94ca3"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "3f2e62e642bb49e4216348061a7c4c4d81964d170cad4aef093d082edc40f82e"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
