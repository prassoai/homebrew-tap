class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "165.5+93aa4b24"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "cc8ffe9754e56f10eef438cec3585a1ef3881e3de5e25fede1cff67146f22b74"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "e6af0a2caca070a623c2e7928b98df564dff29f3d1297f24e8c5b7fc973e9fc8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "b7a60bd279ec6ff7c1496f69e56a5d17048ddf36ff8a89c35cc20e7a728ca597"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "e3b4dfd3dc7b3fc659c81b811b4fd3977ac1d14ac31af9b5a4bd4f47a0dd2640"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
