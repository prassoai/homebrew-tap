class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "220.0+1af2a80a"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "1c20510015a292ab28501346a10a0dfc2e37831d6b740889eafdbfaa3ce27b59"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "b0f3e7a99cfbd51c0ee0651086516ffe180002f2c96d0c53c003d3ccba93fa6a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "e3d3df08ab0b1133ff9fd775b86fb8273a99fa58e2cee192163eafcb74b1b83a"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "e5a6448ccab4e0412f4b7ae1bdc1c154f2121467313b90c4237d5230042c0855"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
