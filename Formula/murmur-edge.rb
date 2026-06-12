class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "139.0+9b2b4e60"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "40e538fa66ac457a2a9b545a7cd1f361f73de2f01b4ebf5779a337d3fb118576"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "eed3d617eda5e9fabe3a2a40dd1b36a21d0b23288dae2f3ee11a6d71dc355adb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "871fe3716569e4dd05a8a49d7a9fd306a61ed07fb11bdd0ee3dad6299eb8e699"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "60e13f88b5b2cd2d1c88458c307fd32131045147d991ca51d5150c9732bd07d8"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
