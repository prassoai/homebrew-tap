class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "272.1+b5c7a1db"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "63392b879e14ab17eabc844d1c6800c2c33e9da0ee5d3a88d776db28ac1114c4"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "448493c39b617a1de7e10ffcd7da8efc46f8e74ef042d6d97ecc10e1242ef31b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "7d5efc837596dedf0d4cd3da41aa93e8ccf38a80b3048347c856611a6e9c32d5"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "08f643b50c35190a4bd1fcd3e4e62cee42ced10dfb86bc337003f17412b0a0e0"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
