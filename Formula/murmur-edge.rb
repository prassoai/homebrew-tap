class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "164.0+3aa9feac"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "789cf0a34820058bfcd9829f74ef233e96e71c7bbbe59d9083546b634b4af25a"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "895ad1d1d4b83b8a89d6f057d04e1ca72cd4dcd5ef0f0682b2f92f2cca1126ad"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "464056e5c56b2a6733545a8a0e1121420f5d3ca0bdb947560be04e986edf8ac8"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "744ef8fc80faf82a0027a7f9a40a13e6ff0c009a71b784e62e9cea05fed4d6b7"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
