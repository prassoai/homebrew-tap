class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "163.0+7cb7e0d0"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "cf4ea6b2d29cb7a9a29ef22801a86d8fc18371cdfc4313b2a2c29bad2869a970"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "e9b4565baaa260e6bbdf7aa49fd119856b57492d06b87d742a128756e12b624d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "d5a8f74ea4c3f088eceb807ef5cd20c7ddc804af72de2c8a1c9491ecd0a6184d"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "5d3b7240ef6f2c5ab41a5f3a34274935b597b1e4cf9d2469039232d626cb1165"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
