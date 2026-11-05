class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "288.0+8e8cd90a"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "98b0aa071f26e440a023f1f9bb960ea6b9b3e1fed68a76048ffb02dc2a89458b"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "e9d7a7989e816a3f21e0a8220efc15ec85db65abab5d3b1d3eb16665c2829922"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "befd7b648bee3f2c32398fa0c5dbdc957aa3356e3e15d3d939330a5b95ada70f"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "10dd3c274149be7e9283f8fd196411158e8dd1cc3e79f6dcfd5e82665ea31649"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
