class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "225.0+fabe2198"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "e110f9e31de02b78b95e4a9f8ef89b97055c8253a37ff8adf047b63846906e14"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "fc5bdbbe83eb52b60cd783c8c0cc6d5afa49e36318d8b6d5a4879724d126eb35"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "6b8a9f9a4f1bf67b48b36badea21e8a769884cbd192cb5675bf685f48d9fb2d8"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "b7d782e5dae860b4a92547d18e72a5f4d5a94180a6a0c3aa9bd5533454d84805"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
