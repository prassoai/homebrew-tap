class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "304.1+33c328c8"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "d585bafbceea1b3e65be45e0699e7e6c7f764fbe7f1293cf0c4798c0b645cd21"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "bc6b62960db9c566b4afaa705de8fee622724fc7e1dfc8e8198365dfda529bb1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "0a3d6079441e8de9bda920643e68a5fbc63a386c26a4ecb42b543af7d9df78eb"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "c08a3b5064ea123136c9a6047decd353a0cfeb27005a82ef101aa6f5100c0453"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
