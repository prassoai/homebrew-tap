class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "221.3+eb4d5eec"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "c9b2166f65fcac8621d6c9af773d30695ce6584980f13a7bd8b3eeb030ee1da9"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "36a73a4a56cbe1497e2c9ccf00955d51493c1ee9e85c3c06bdf0a400689e2fb9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "39cd7b71c6fced8679dfd858da07d6a2d1620c9fdee00cc17aed0f3b6f32e790"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "1a0ae98a25aeca01fa38ceffe20a1e1c4fb3cb2c47e86ba2ff71b25843636e74"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
