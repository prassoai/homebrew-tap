class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "288.1+72d09775"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "bcb7a5c6ff7642ac74cf28f540bbf3d240f099b01f1c400a0d84b5eb0ef5cfa0"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "423827b9cb6ec959eabfa10b0e31b896a0201f8877aba1cc7513359dbad22771"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "8039687997040a1a49f1f909f88cc8a9a03b18a3c7f828c15cc2a35b1d7d1f9c"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "80cd6ee9d02eef458c1f9f248d6d588a55793dd37e5290a127301b0a656a630e"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
