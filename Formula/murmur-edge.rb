class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "324.1+6e84a4ea"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "87c7d0d4356e1f3a7f50c8e5a5e8501cacdab64d3c6664c960d755bd324dfd06"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "105bbdc3cf5996da35a06c8825e7f519123e0032b8c19d5d6e32213182ba4d05"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "9efa2ee8686e4b0a433d411f102f6dbba575a1abd3c0d11115b5989bbdc61876"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "d8a7f4f59b220b0f47eb12eaf9e01d78b17c6955f5f3396bf9dbb835251d2c6b"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
