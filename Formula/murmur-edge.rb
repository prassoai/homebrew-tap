class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "282.4+c9a7373e"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "0832c1c68a3bb8639512f7b2cce0e8b44061f0fd6d5b9c7eb157dcabdeeefbf1"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "44462ab9a845ace5951174a0ee1d5d984c1c173ae61637ef7553a887e73c47aa"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "c94b486196b32198f4d0aa643ca9d4244141cbfeef897aad8ce41d59be5f7a02"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "6cc5a48a639105d40afe9c439abc1fb815c4f2f48168a8d4f3381b44332a8151"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
