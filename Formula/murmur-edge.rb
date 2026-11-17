class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "312.3+9dca065b"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "b3338d19b05755d0c1b1172f3801c505cb75f0a1b4d70ebe1460ddb61043c7f3"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "4b49be40c523a43cc4fdcf97d5ff25fcc7e9a1873dd9fcb2e0f7711c556f79b5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "2f250359b3b5786d0ac53693cffb9054f6f3da02ee9f38f82a0ec9f9bae48af9"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "88967b51fb1aa932796ecaa2a16b3f7123d158d1ca5cc7aea90fc2a570d2276a"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
