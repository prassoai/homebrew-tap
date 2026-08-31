class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "220.0+bfb9c412"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "4795ebf659f096ef87289137aeab2dec1c7fe7a082c67e98f7a16daeb811fbfd"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "75d8b610e1f0cef76d8ff5a8bcf9248e7f7f0f8e97f65ad88a3ab790cf967e7b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "d49ad5fd53436e13f62f44b8528de82183d9021e5e460c049ea78c5d03febd9f"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "2273e873b1b1b1a3772ec6a8201ffaf346aa11b2a12bd764c00eed9810f03aaa"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
