class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "139.0+8f44eac8"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "4c9b1a5e608bc35346acbdd1f2a77c323a5fc775b4918396325cbecefa9ade4e"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "69d6833a3d81f2a516f12b9be1d443df228bdbf8e29635fe6ed172e0d0fbb6e5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "315b3164c5c75cfd70cf9d64f1cca8b6296676a70bcc327ff6fa752af3e5a34f"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "15c15e671ed021e6c69c0ce1939ebcb795683b9c83f9d675e27a5398c432cf5d"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
