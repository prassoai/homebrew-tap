class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "231.1+8dfd629b"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "9b74f7fd03c86c6d6328a87d24734c15c78e970ec5c1fa0ca75bafb0ca2368e5"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "4c58821dc64c09e75f9d232a8701400d65adc47ab79271b5eb0d2bb9a629fab7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "684d5b1c83628ba70172b10edca5e49b8f86b2cbc15127b7ba36f91e5e3ee50e"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "4bbe46dd5f001efb0566d0339fdf34a7a835d3bfc294a1234b4cd1555d66cd23"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
