class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "286.2+ed0f8f49"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "edbbcc2d2c824d0ab4c0c30e9ecb38a44f2f6cd0907b738f80663c6161051e2b"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "367835c896d008ecc266c78fc95992a961f851cac8a4ce8fdb52063d587a0531"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "16fcc1bd1cd05b1e4ae37b5c20ca6ad5ff4e3f0723cb45e401985bc99a123f24"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "6defce7a63cd0f43ce6f7e0b6cf2cf588016933afb649476eb7df7b01b86d087"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
