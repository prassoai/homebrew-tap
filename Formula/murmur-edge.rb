class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "228.1+dff7216c"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "991431d4ac977f2c98722ef4ca062d8b89fb75ebd79abf6d407b5a72f9bcdf1c"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "3af7ce6b11a9e3198a854480475deb564a2fcbe2d732bf7d9240f2bf65a6e92e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "2f295e62ac2133b27c2e41f5e710d4538c6ba06d0a22e4bd4cd6fc640b035536"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "3e25c3dd81a05f6825d9e1f972fe77e9c0d42f4a025e36eb5cca511860c4ff5d"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
