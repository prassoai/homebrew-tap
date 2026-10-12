class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "260.2+c0cef960"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "f3e81e322b53237c4278cfc82e412b2c5df44c3a2e80c5912791249e5e94df22"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "819a07db7c3235d4ce642a2aaa7ddc9a78f0d3f7b762c3cc514cebf7f57c3317"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "8cdedcd1eb15a78701613bf27b8c78544f2cb52432bbe50e1b2e18259fb96739"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "a92e90ef30ac7bc56c7e67723a300fcc96bec726855fbee60cb7a8b33c21114e"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
