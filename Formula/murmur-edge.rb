class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "279.2+5018ad67"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "8da9a43a90e0b7ab087d5713f6a316e61eaef64aa49809f4e3ee67c0042ff465"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "c27399a9041df718eba20c6c2f03b9ab7a0fe9bf3298f7630bbf60249b93d0eb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "91af52b6fc7007aa71ba0dacae6bddd591189f2ddf0fb2c1f5c357c4ba5f9f02"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "72a6198bf37061b4567b037e13cea6f2e7254c264ecbc331b7bd8420be3e2d4c"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
