class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "212.1+87e38500"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "b97c07a9b5ecefef9a24eeb6e610c344d058febc0c34f5c8c0ca68997c1a6502"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "0a3aad5aaabfc40ea1b3a461cbe46a8c1a8fb3a7162572fc96d9bec8eded9942"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "dca80ecda4ea72fa27617f546512692f7a8ccac350d613ae0c4510d25414d0a6"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "c6383ab04f90373f7cda8bbf8c9a2c5833d60380e1e67f14bdf000ce7d18df86"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
