class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "69.0+90347620"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-darwin-amd64"
      sha256 "70e90de3ad9afd64578bc2be8bec9909f8659bf3bdb86a45628418280d49d700"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-darwin-arm64"
      sha256 "f1da068894bcb3c34c3f0b6effc714f165291a8eb19b93d9608a2d8d143f890b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-linux-amd64"
      sha256 "47d0b7c4d2e2780b673cff098cb595e867e349e71f6ff2c3c95675ea8d49671e"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur version")
  end
end
