class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "254.2+1b287543"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "7bfebd910161c6a1071697e62445608d8c1b6ab47f9e8e3ccfea72b55f445f86"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "8cc148d9b5b427b193c17b6cd80a5cc10efdb5cfd3d0d41cb7472faad91af723"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "27fe77722d694633b5d400e39f565d4b4a5dae81f90d0cd840b4662f8bcfe434"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "275a58b7a7bfb2a39874ce9bc67c4f63fab0693bd32d0538f9663362e702a2ab"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
