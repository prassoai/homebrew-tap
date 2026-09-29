class Murmur < Formula
  desc "CLI for the Murmur agent orchestration platform"
  homepage "https://github.com/prassoai/murmuration"
  version "239.0"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v239.0/murmur-darwin-amd64"
      sha256 "4a0cce150bd507ed7f1d32c272a536d5a5b195fc296626bd7a27b8b6ee8e13a1"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v239.0/murmur-darwin-arm64"
      sha256 "263f2c0e9806cfce42669c8936c6a6e35a111794b1e972da5f0f4885f2fa481b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v239.0/murmur-linux-amd64"
      sha256 "fdefde0af4b2a227fa81e797b72c41884cc25438cf2b7b1c40692df13680db33"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v239.0/murmur-linux-arm64"
      sha256 "07d93d5d7befc7b16b52d402c9f2bb2f474e0e8d36262004eb653c4446397b93"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur version")
  end
end
