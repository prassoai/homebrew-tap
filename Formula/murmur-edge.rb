class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "203.0+abfca675"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "3ed6c2a6ec659b3d6145ca7bc4a0296a5b008a600c5e0c4afc1d4dd29e5a3817"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "de97c08161fb24398a9ecfa65a52134c960740d5919b67f2865ebe0c08c86ee4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "ca0da7219845299d7fd027bb913ba4921c05be52485778f0916d2b396db1cbb5"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "011f0cb18f904e2936c9b75f245dc0b21ea6a78609ea98bfff42ff3c7fae9660"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
