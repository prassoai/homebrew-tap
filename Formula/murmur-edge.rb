class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "279.1+33d58de5"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "a7204eb793ea2e39bcfc8e5e3f0d4f6f89f74d367bffb740c2293b087cc94814"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "612569c1bf4ea9ca05e0187e800a8e51ad87eadcc235ab7cd9e8c2bdf8cd5d59"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "e0b368c1ed1ba5a8102f16b0a378c2e8976d110da920a520c858857275d1bf9d"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "5f7c7586e7bcdda3bf0bc2df13e497cc9a02bf71c20da06beb42d82888bc2567"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
