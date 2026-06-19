class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "156.0+6ebdc3dc"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "91e8a101763ea7fdfb71dd7763bd20cce68025f374743e092ec8f12c43d0f997"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "13a287c9a93f9ca3b44d718c832700aef08e854aff2a6626643b7a19aa8038e3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "3169c4a11501b04d6248d4fce34200848ab3eb6cfa05cb3e9f3c92d82d2a08b5"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "857b0cdd4489eee605cc72f0b2c7697ca3f54e1d6277f73a8f188d326f74df75"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
