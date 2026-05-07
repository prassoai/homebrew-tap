class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "66.1+6312b6cc"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-darwin-amd64"
      sha256 "b5b3505f459b4db43b0a2415b0fde712b20b79005273e732c85158f490c57ac6"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-darwin-arm64"
      sha256 "34c97cc0ad4d5653f163b01b3a71b9267c7e2d0abc1aa0bdd0539690b0c97aca"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-linux-amd64"
      sha256 "d6a36cdad1971b3058c3c1a6bda4269b7bfd9f7d3960ad61b16d1f2d2df1de5d"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur version")
  end
end
