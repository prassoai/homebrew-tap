class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "205.0+4f14d5f7"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "3c12d6173b8440701f8a9bdc1aa73d622bc0bc04f92b1ccdfcdc88af049f1039"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "4890e10c1bb74ada72970e4bb7b8f0fa25ae4a54a9cefb7a2216032a2c2655e2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "1f8b02caa1ce1f4d3ea6ba3b146a30e90a0e41b03afe4389b03f6c7f712c7af9"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "f03ba140ae6f5dd249a469c837633c86e18660fc42ad7317ca0d0f47e1640e1c"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
