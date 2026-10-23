class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "269.1+fa56c5d4"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "f8a31833beeda3e9f3835dd9b5b276ae1bd2bfe7d8fd338dd8361e572f499efb"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "652ba4a288b4b7374df4679bc38883fb4c321238db5d5445adcfa45769dc2fc0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "26640cccef6642ddbaeb26f6e2d77e8d9f4fecf8d8c7437d74b09a829aa7b834"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "92cbd4fbbe13e74e0859c3b639b7f3ddcaa6512998719abb744ed3d2d87a9a43"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
