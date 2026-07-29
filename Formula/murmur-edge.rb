class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "189.0+d2f9f136"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "625e276d67ce6a2031e0f8a4c99695d1aa91d7246ef0c665f543e9a494e7803b"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "4bf2e4e61abb53bbca37542e58b0f29ddb382219ef02d42a4038c27b0ab9d502"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "2b8c3068ada36e6eba4abbe27b913e4099e1805ce05cc0e12abaacbb5d3b3d77"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "d91d9ed927d4035d0f5631cd01e73b473f57d34f2f3ca929520ba7a47baab637"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
