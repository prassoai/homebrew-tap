class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "228.1+4d4356e2"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "2b02f7c5bfe4742f90501be88df5437169e0e827d05dc8156340dbd78a9a5362"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "aa903b72045167e9ac50e3888cb9c30cc344c5eca76171d11be9afe5b2a0f4ce"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "f56cccd11c7d2e3f6d6d14a2e4c3d3ed65c94c1557347ce6c671b56c81c26ecf"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "de97aebcaeaa66f4a474980d21c775fd5804995fcb0e991a6916e3fdc56ea61b"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
