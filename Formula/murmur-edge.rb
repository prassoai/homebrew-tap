class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "275.0+9510fee0"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "92b5cb530ce0cf1c7616f5c22d13aa4689f60d14a4cfe5a8f2c5ab507036cace"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "3604ffe88eaa4adb8bdb7b47f5dee8943eb88a6c7c5dd94d1cd9339c9b2dc78a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "17fad6b0642a2289d15260081ee0779cd32505cb0ff86bc5fe6ae48bc3615c10"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "9cb49a1577de072156f29402e9a31020c92e4445c1ef8c70869e78eb303a8d35"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
