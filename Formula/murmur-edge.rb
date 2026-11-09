class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "293.3+b5e48e9c"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "6e3fe4d5e9f86587c12b45a97bf8c69131b812a7aca122267d0558bf5e054542"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "8ee68aee962fb0b7bb44282a48fa5370b8a5e4877a32f7b268ba5dfb1bbf2836"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "3a84707be209ee3d30a3aa7f4aad74ff4cf7d999bc5070afe3c5b889bfd0810b"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "0f7d0068ca98a9da7bcde1bc8b7adbb2110fe38d09b92efccb84fde2be3b68c4"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
