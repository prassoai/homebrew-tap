class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "257.0+c755136a"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "06e3c8e9e92df25616c8cf76e96ed4d96e1dc2e2122fa3e56cc2e52155abaea5"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "0b5c2145ea2a7a3f85297be2b9b81895d7ac0b5d8e8195ed7051f56a35e2604e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "b9a9896453b8b7cf04eecb419aba58a1bce6e30ba155a6b92b58288ff4e249be"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "4d6231a46ea4244d85d3336badcef5bf3a833ddc9ec6aa9d007a13b9e75427d4"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
