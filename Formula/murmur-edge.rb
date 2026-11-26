class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "330.1+bb786857"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "95ceb311f5e8fc68db88a2f73e032ab90f86ee94dc365311f2008db142522e1b"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "bbf1e80e882a63b0f8d24962400a58f9482491aab7d7a2b1e7c45c0e97cb7d74"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "69c085bff558eae050a4b2b2ca4aad70b1d8c2610eccab0d979ddf7fc7989bc0"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "3884adb58204dbb5ac89d2ca3e226d8bca22d636eb24885b02eaf6bcd129eb53"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
