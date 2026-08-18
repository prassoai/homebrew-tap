class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "214.2+6cd497ab"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "be4fca8aaa57a68167a87671d833535cfd6acd99d1cdee8505c7a923ce31d8f6"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "8a54303608ef9e24839f665f2a4c06f3c87637c82e24bfa00cb6f9bea040058a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "54b2d741161fdd8346d1b4e322a455f7ea7cf4e5e3ae52aa6b3aa37491b012bd"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "47033d86f6eb54ec8554e37b570ffe1daa2aa5b05b70baaff4eebadc2b3d9cfe"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
