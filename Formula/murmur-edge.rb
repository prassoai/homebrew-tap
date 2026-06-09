class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "134.0+48f9fe30"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "1c9400e331cae63042d6cc3fbaff0b309b967f2313cfd513a30b1e49d4dfc2c5"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "f84f77b2be7a322e4d95e3fe47c84e3cfa1a1b6c76bd06150de1414690785c15"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "03ab91adaa6d27cc58e59a5831ee650eb805dc6bd1cada9a3d9a72cd6bc193b5"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "00cf4bbb4789d55bc88277dfc7d0cf3d76df6ace7f391b29b4822ea2638783a1"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
