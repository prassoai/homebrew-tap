class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "135.0+a4d62a28"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "84355fbc1bb3c86884e7c1c19d4884b5b18f22bb25ea9956357546129fa7507b"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "6d1763b481d42bc41f2ced74f6bcf4fbdedeec9455e9d08f4e28fdbb661c0ffd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "efbf07af368cb9fda41721da8756c51e3e909c6cc9865ddbe8d055aad0188e19"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "198c14fbf97f547d034300c1885d02a806d4418f7a18c9f73f4320b8f83d7d3f"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
