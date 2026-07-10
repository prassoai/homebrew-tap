class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "168.0+e2398044"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "e3c4254a9411fae41f67bb471606466b39f0b543e47ed5cbe4f75a9e7ac9ce35"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "114166ab146282b0c9a890e65fdfcb2b0e516bd09ebadc9f19ebdbedbd4a638e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "34f005bf95326e317e855ad0c02ea2ce1d6a0c2f3ff916d1b258ed7d03489b95"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "865b8de32ced295477eae7654fe5359d88b5ba1bea814b00b3eb55ec2921da71"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
