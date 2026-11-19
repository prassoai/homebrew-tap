class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "316.0+f7fc2296"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "5f9d92fd748f54d752fe7ed72ff6bcb13ddb30d237e9490c889e6c65956a1622"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "07e07df4ae4e01b14c39130dc441af7724820fcf0e7f64de5c5a3a1be48faec3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "1ecaee97098e861fb18febf91a916c8d5e2fffcef5c585e37b2e8861d5eb4d8e"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "48f486fb4bb15d318ff977b9205f2c1930a99c43141bd34bab5fb1a1d70371be"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
