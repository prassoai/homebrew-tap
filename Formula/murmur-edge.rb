class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "260.2+7cf6e04a"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "b350bf7c42b48c39dac61a15f74bf0fdf342334a1f845275168feff4b093193f"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "634a6861608cbf6d78f06aaed577ff1cd4a4621c4e0cabc6e2b4b4a3ad1285b6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "264491955a5a3fe72a8c2b1e5d3c94fe435dcd95350f167dca0b239800882a97"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "b7e17c770709b5869dd15a21aa84127d31c1f7456ec2b1101fe84b067ad72f83"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
