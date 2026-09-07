class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "226.1+870a35c9"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "aa8bfe5cdbc5efa3dcbb7443d7c49ad1687b2c75fb59614f5e1b5d51bf6eac6d"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "71a47fdfacfc9e556915e5767bd9b52ae13250692be6af13eb6dff6f89b01754"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "3dc5d6bfe5e68fb17696a0dbd3cdeed9b45e10ce5e72b8b21e17a34cf48e0bc1"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "3191327cecd34c00d412899f400710d775498fccbaedc55f9647ff9c15827eb8"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
