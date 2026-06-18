class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "153.0+d6ba8a24"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "d43b76e5f6c937d99d58ae95ce1b0ccd99a2b5594a620dcf2f68cc2786515d4d"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "f2c8929e7f7ca2920019adf33de80316b7809d585db1bc31b636511c0b2bf672"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "ecc3e31a3e28b0602f46ea62cbb65ff5eaf11fc168c6b4a53cde514b9fd56e46"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "4f8ca4f75a05dbd2b7547664ab2acfaec6a60ebbe98cbba29ebe527ec21a874b"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
