class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "290.6+6938e402"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "7b9b7fcfd53f2b3a7fb0c88d32f56f48d175246e6dbde484e9909ddde8427f37"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "09257559b32a5fa7efd42e1bf5ee29fb485ea6daf7846beed4c785024af12a89"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "6c43ee70aced9fe68c41254d2d6b548a2a50d3b3684b83c2a8c4fff1869f169f"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "a4aba5c894297efcb8b7f2577ee1153fac34ca810e3a32420d7ba95d7b0af1b1"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
