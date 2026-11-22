class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "319.4+7329373a"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "af0629f1d723dcac636858bef2f948dfae2b80651b12e259ae46d7d6ba6ba3d6"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "a67ed0571e9bc94de758879f7c0feb34d60f4ee69444ae5140aa983fdd4673cf"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "17ab192c2f99cf7d2d7d8cf5e419a6cb1e87a2c0b7a6a1ee3ed7c87f8b32ccfe"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "5314ff3f3dff4df6d8b4e62507ce602f126d1b2cf90cd7a54a6778796574a410"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
