class Murmur < Formula
  desc "CLI for the Murmur agent orchestration platform"
  homepage "https://github.com/prassoai/murmuration"
  version "270.1"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v270.1/murmur-darwin-amd64"
      sha256 "1f7ae51652af4bf10552dbe97b077cbe518e373e608e619cc5b6f9344f47aa37"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v270.1/murmur-darwin-arm64"
      sha256 "e95e8f13cb1cc9322d848f0bb5c108648ad688d60e0742918151bff86f67fca2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v270.1/murmur-linux-amd64"
      sha256 "3122ee71caaf7fe830fa916b13348baa13018ea06dff25f4bfd238806d964ad7"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v270.1/murmur-linux-arm64"
      sha256 "1e387dcd84dc23ff6d51a30c5889dd479cfd8ce15a73b8f7f9237474157eac61"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur version")
  end
end
