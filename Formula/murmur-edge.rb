class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "193.1+ec194787"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "05867bc9a4b2786a7b16d5925f834037913307cf6f3b860fb86a3957913bf3f8"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "caec10750301b2de0f3345159e6de3f3bece900756a02a79d7a338b1d7ffdc81"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "102ace588fc7899578b6d63e7d91bb35e1014f03f2aefa7d983e7ff31bc886d8"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "d3d10d8b7c8c7bced50733ab3a2d7ad8bafe6eda5412189d5629e5e8ab36dd26"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
