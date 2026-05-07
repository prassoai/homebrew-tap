class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "68.0+8ae9db3e"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-darwin-amd64"
      sha256 "c2bdb3aaf748f4f9bde48ac5c7439e987285bd1734e0032d27a421c25e964254"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-darwin-arm64"
      sha256 "ee43d08e80c4e1825b88d466916c790b6b1da69696a4a5db43d086751ad08e40"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-linux-amd64"
      sha256 "1ffc46cf31778d77d4235a24f63a731721eb1bf83016ae32a3b67c9d8fa26c7f"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur version")
  end
end
