class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "232.11+ddd9b649"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "c94493301c8b661979457c2f030c8f0cd721d7b9d29ee945b5e2c2d00ea07c6f"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "0420f2d2d4511e8105ad72c0e2f5948eafc04ab4a4dfc3facc7a5d3023995b8c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "3b598ab53fb0bee37b10132d7049a5d5ccebb6f8b1e518b723bf03ec1b72e8cf"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "31b4c6a7950c57476c4b72c275d1d29866636af25f304b9c8b2a4b055e7b3826"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
