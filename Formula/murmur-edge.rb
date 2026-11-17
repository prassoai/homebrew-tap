class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "312.2+d98fd19d"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "751034ea7dcbda3a3262bc5fd1b01bcd1647d73d365dfd8f932264977b9b1edd"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "f9eebc9b3de14d5758d128dc0443365c5e36a1991e5d543c4bf25e9ba46f4352"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "dc36b68404b326e71b597051168bcc23cc5bfbe13a60e881b80ec10f7c3d968c"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "c5bcba6396a7a113bedf273fa38eb4a8765a6d00f4bc43eb3fbe0a7ec6b334c1"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
