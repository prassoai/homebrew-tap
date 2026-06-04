class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "121.0+edcf06d4"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "69048cf2c5834dffa15a9721de4cf02dc46abc47c6df844da0b0079384aa0102"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "a2078b91816a57ec9749ff3ad2c1e6cd2454ad28c1895ca3e31bed69a9c3be91"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "50ec9de0f6cc428e03f1e5f5f8926a77e4f5aad3c7421f02ce54dc4838489b5d"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "95f3e2ef9d11f583318a2ea5b6c4a1e116c66cad2767a6cf026eb4925449bd89"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
