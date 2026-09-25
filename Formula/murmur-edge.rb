class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "235.2+ce8f5025"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "2808b4e2d38d9d1f6b90f949ab162ed25da55e2dec8170024798a0906e7c3496"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "57c7bb95914634c542e4fe7296ea9d760e2ba159a89c4b653dab3f11943a9622"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "da7e1ee6db31ea4081d1a526bee3845dffd856e63c69f5d9c10f18a8a374bf80"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "2807b5b0c80bbe9fafef26ef844055bb91aedc4c17ecbaffc10d93d8615884da"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
