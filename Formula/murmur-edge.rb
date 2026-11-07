class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "291.1+8482bbb4"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "09024e5f2709f1a34a12ef0401d4525c9d2f1b89ca10cbc8d0260b582a0d9277"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "26bd73e8e30c4d57d8d5185e0b2b45bb9d63804a637c4cd9d3dccbd544b9aaa6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "eef22bcb6ac9d32558af61ad5c4c219735033ad19fefef9df76b121db8e622a8"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "86a29313e8117e1292a6e9c130281306f2651788677b895a0954e26bdeec3c4e"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
