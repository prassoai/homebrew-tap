class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "236.0+671d9d97"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "bf15e0cec239bc5a9e933abf18c182247b6b06514aa1f48ed4ed4cfdadca8a88"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "50d075a342a0bf1b6ae71f21bda8297ec9b42c7d69fde0b2a49ec2a2016e0ad1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "30a217c5582d9e9f30116481b7f29b31ce46009c8b63eb6adbd1109fce5f628f"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "3f54a715d1b4d89e838d0650d915e6fe445c8b38e846ed630cac9f5f6142b852"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
