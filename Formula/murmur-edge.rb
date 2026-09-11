class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "229.3+7e4e96dc"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "e5fe0496ac2cd02c7484bc74d077519e46047e6fc612d0ddfe548a3f38bbeca7"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "4f0647f1325ddd338040f4a9f5fc81c2ffc3ad0c1ea0ce23fe75c43f5111c714"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "fd4fabe255ddbd5198a719d0199eb006076d5235c65f10bbf6145aa726fc9b62"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "ef6c293d2b1c6f439a7938cc5deb5d0ddcef6e93c20516d1b0e10000739f9e6e"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
