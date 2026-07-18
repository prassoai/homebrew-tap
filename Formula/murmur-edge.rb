class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "175.1+ca59b9aa"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "4a14c29566057ea6dec70f6f95bad760da12998c621b7260c6d24f366c095c86"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "0a6f06e1da12bef1ca46e39fc0118f7a8dac11ca2cd7319fdb05c38d9ebb6dfa"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "c75342136fe3b26e83aec3989474d4e0fcdf70a85662473537bff79a479f7ab7"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "18e689fe3da92a46dbfbba05eb4ce75552406538d305d1f6d00e3f63d1847a00"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
