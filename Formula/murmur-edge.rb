class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "230.0+05c44df2"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "f03b4ecab66f9906e5c8757cb57a7975dd03afb1c71b9f48b74a0d96730806f2"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "0cbd3381232a6015d2c55f8d5f8a1ba227c7eaeb822e81b09d2ba2ba2ed51c1e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "af1fdd4b686216d4dc10295b82cdcfeb7f58ad28d50f5b9c3735839de7323333"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "59b81e562073a7bee6f6a1a79e09acb02b5608d59d1d47b9310e6971d48fd994"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
