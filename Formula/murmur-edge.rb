class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "156.0+33e43191"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "413577cb3cd7868881d417c14adeb3aec0c0b01978581a7854067711e0e52685"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "64f791d04826b1f362ebabe2fbc7dc5f4576457f1716ac82dd6fd2345fb6a1a9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "d9757f6fc7ac1e799dc5a1231a30886b1b8c10ceb1095dc62b4b764c109ebb9d"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "20053ee1f5d04b727b1520aa795b047414edc8d1e4ba9444e59f0c0b6fbe69ec"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
