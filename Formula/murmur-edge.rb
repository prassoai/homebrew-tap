class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "250.8+bb69742d"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "88f72e33ee444ae55b48cd018c51f46ac6772b390a17ed9df132e5936261ccba"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "97f6d60147e3cb256ca3727b1826c71b768f2b6192ee63aefaacf70fe89fcfe4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "8dc9faa04bd2408c73fa34a50d7693125d697eb5d03d72fef0fd7aa22c5c45be"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "eedf6abdb6944e7b1e85c61c495c6661487bda64aaf3c464bc03cc6b04857313"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
