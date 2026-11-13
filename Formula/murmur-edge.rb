class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "299.0+dad247cb"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "5f2f29d1bdd434e51e025e28398d1aaed63d097b5af1c0a8441500840ea5dd39"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "5d2704bedd449133bb2b5078f2af8b6740761639d4deaa1862287386a69e214c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "40a602a730c79d72281e2fce18b451c1d699ba24f55d884c350a859cbafe03e4"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "ee7260e9e0d331d7c1f7b5903bfb7c4e9e2ae0a6b4ff999718fefcc9c12f7d98"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
