class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "270.3+0d11a247"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "7568ef698d5f51ab0d4de52f1b954adbe47539e3b736a0c297e24797e33d34d2"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "02b3ac9a07741c48a44b51c1f1e35f98f0e307c80d9fd3bbfc0d3ab4abba39e2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "bf2ad60529be13d45f16ec409b07cc3227e8dcbd3935ca95543eb1aafff91bcd"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "628ba8b79ddc3f1a9fab01e76a47800f2246f4d17e9e9a05e191622bbf4c816b"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
