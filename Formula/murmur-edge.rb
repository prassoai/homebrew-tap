class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "268.1+f4d4aa41"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "6a7c027d6fa2ac3731ee56d6508c1d6e0e318e10b797640c20d1b22961a5f38c"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "8a6f5d37446bf2ee594c195c0b829a9f8d5e21e56cdefbf3d608c2c0bfe5b3e6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "882934780be831ee1232eaddc6c877de04bfdd0e7d606cd3521ad29d60abea24"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "6d4b528b5d928e889a5ab4bca4a2e1781767c5bfb68fc9abe6a2e10e397af41e"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
