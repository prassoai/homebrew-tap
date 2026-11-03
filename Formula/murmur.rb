class Murmur < Formula
  desc "CLI for the Murmur agent orchestration platform"
  homepage "https://github.com/prassoai/murmuration"
  version "286.2"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v286.2/murmur-darwin-amd64"
      sha256 "edbbcc2d2c824d0ab4c0c30e9ecb38a44f2f6cd0907b738f80663c6161051e2b"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v286.2/murmur-darwin-arm64"
      sha256 "97071c7b297553ca47a55f93376f191b138fdd23739a3ac63caea20a133589e4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v286.2/murmur-linux-amd64"
      sha256 "b7a636687945d746242080ae8e744864ac16f9f5fcb1dc11f8f9808d2987acc9"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v286.2/murmur-linux-arm64"
      sha256 "dffe704530e931c809a869fc7a871d88d8682b53207e6a781b64b7b30af48763"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur version")
  end
end
