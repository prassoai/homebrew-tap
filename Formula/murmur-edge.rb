class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "155.0+d5bcd868"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "71d2cefee91b10b723d74bd12c83c581cebdf7bfc5bfe80fa4b19ef3c886bd7d"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "a8e5b5fe5e6e52d1b3e947c4742514448d2f991251d662d4793bc37f45e81bc7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "11baf7a5886562a3e4afafda0b9c03d0b279b874aa58c5b71be2cd62fa422d22"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "04ff99ba66e92927f775ca4d5b87030abeca2a8ac4335e63609d72f95251eca2"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
