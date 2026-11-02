class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "283.0+f6c30e3a"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "010ba9fafa700619e55fc26a1e6b1345258525a9e1d3d3ab3a33d0ebdd97724a"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "bfa284c80f1cc78c7e9f7d8309d81928c2c69a1d1b8e75476c996e936cd642b3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "810f519d9b85675a6c9d9b2f65a6e798b3d97fb4735b6a2004e152439dc59c10"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "9bbd2ff0c69c2e637ea18dec9d19b93a4d14bb6aa630b8bfca76c5c0e41d3b1c"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
