class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "241.5+dba3e53b"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "42c92094352beff5a0424fa39f6d7ca5b3620da9fc1be3cebf15fa1d3864514e"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "5e2180f403854e97a2ab255fd7100b97ec77e2c180d1715ad495b2c8d20d7eb7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "dff572827b5e6d6f0b4649deb121aae9fc71e02b7d0e84b2a1d823e8ff5b2723"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "f4ffa432dbb1f5cd8891c0f6f0b730ef139f5264e1714b50c16ed946df3c6bfe"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
