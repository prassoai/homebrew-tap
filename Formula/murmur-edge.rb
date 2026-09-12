class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "229.3+16b15f35"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "398dfbaef526a1d9682fdd4a48e712b9dc32f66f84abf0c3a3e73f575a61caf0"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "f318ceee0c1eb1c508f57179f0efc6bc6dd94da6efa8c8f86e7d6577545e23d6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "dee2bf8703e8f1eb7e8144295670a9ddb6b165e7a71cff0cf08b38ecd13f97ca"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "7c685ff4f763440e385f2a21a64066a146a9c41ae1df05dfa930f3a63af113a2"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
