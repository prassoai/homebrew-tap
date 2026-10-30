class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "277.0+e5b55dc8"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "5e947efc72c5f030267d8f5e4452ac3c901bca5f35c972ecc88e0d539c8f9042"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "23a44f313191ffa42ce8a559f295f7eb409fac79ac4e3bc0ca74e4fc41deed16"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "189b6eb204b985db5c9350754b0ddc36aba90c7bff79f14b072e9623af609130"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "2b6537692a1bc0f8e79a3f5eaada5362d31f616cd1642675c025dba36d7dfef4"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
