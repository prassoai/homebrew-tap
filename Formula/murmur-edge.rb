class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "204.0+0e69e76e"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "08b5a0c973c364c99f2190f66384f1749c2baee9b1416771d521d1c764476763"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "d9a20ba823ab90dfeb1607fc657ecf8c00ce7e57a7207dc379b0203fb2f2dc93"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "01eb00c83d7bd7eb1a967614143e6fc5bbfe790964045b62a2c0110b66281d3d"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "8094523ca7f882e5a7ddfa2b9f256f0281a3f7c2a855d3ed76c00d9a44a17fd0"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
