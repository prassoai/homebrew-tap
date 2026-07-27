class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "185.1+22f36ffa"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "f05d1add8c69216f1782cf1da8bc42b40a2931a7cd35a6a3e7de9b8de0a485c9"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "9b2ec6fc5023220d15b9e98e9d81d7933d4f19f24fe7b7b4d63efe5afa6d876a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "2fe2adc9222856c3d8f3ff97c0fc3b77d19e5a1e58e222d3ece3629e63160cec"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "388d79275f54370be31d6c8f9f239ee6e2c4e5dd6b7e41c75e0895d518eb1a25"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
