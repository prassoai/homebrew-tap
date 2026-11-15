class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "305.1+21e41096"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "4a20fe021c0b83774d8fa342fcc901202d0c38c0bbdfbc90de820b16d4db40f6"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "86325f629e495b052af0f49f6ea89e5f07118eedf0557dc0f6c5e3aeffc520c7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "03a035b786d7ab8bf70cef8a2b550438aac734e1f8a158597be0d1f2c779a4df"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "abda1a5b60f06bb0ec4f6c7ce7c073a722f50cd9662b05109b3575d4e5bfea70"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
