class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "331.2+5996f2a8"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "209542f5eeff25329938d98d0641329533b5b3a5bacaf15eec0c2002cdc339a1"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "ffd9567ed5d04bb2fdf23fbdb2f2eb1b952ed2095e9a331ab8d5191bcae3b4bb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "029dc7eaf91f69cbae1f5c133b3d8f1acc3a6af8001f3dcdb9c171ed0389d0d5"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "077bd25ade3b22aee95a1a9b6761dada768b001789f29bc2c40ca5ccdd6a8ceb"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
