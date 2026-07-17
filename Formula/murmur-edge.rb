class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "175.0+fbf1f461"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "5238127b835561a6ce170803ed06a1f2ff1dac702bd5fe307914b14cec4f639d"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "848ba0f5c76521917412146002ccba1ebd4e6b13ee39bc1625afdfd7b3945b3e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "08b75fdc3370e77d4f01d3fad0a3b42f0c0f8ad8aa247fe4cf32125ccf92ad4c"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "a776d16ecc2f7d70c47d8d8783dab34d4a6c0834ee4f5a982f4a459133872385"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
