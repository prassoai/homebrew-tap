class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "152.0+10fc0b59"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "a15c5d6d8fcb01c7b5fc17c20e2b9969868cf0eaf9b05a0c549372e7a0cb6eec"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "53cea845d3947fb53f7c4c8cd18fe17695a0f7e7e9d3ab7a7dc95d76c110f1a3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "2e9c2fa97cd906e773dd79c9496284ecf277c5988715fbb1a698b5c4495a07a6"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "8bff8cefdce2f17aecfb4d8588bcdc80f32f26cf18dd469baa1993a27455c3a8"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
