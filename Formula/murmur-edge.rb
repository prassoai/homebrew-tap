class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "160.2+d92531cc"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "42b07dc0f54d2e2c1ca1b2c557386e87bfea921743e62a11a0dd4a130bd39fcd"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "12e929f7e7274d797fd2d344b257674f9e45f7b46a4ffc3cd00b1fb8b54a2850"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "2844e8a381634476164c895ac4c0b21a75eea5a5f667c9f90dd459062a50af80"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "5259c5e884b25fdcfe93ac3ae0d17b4dc9ec3165032f7bfbc0ad06521c6db6ee"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
