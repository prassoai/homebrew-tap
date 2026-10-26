class Murmur < Formula
  desc "CLI for the Murmur agent orchestration platform"
  homepage "https://github.com/prassoai/murmuration"
  version "271.4"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v271.4/murmur-darwin-amd64"
      sha256 "9917a3875593ef254a3c524053679fb693f5c26c784442762b66d952404e8980"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v271.4/murmur-darwin-arm64"
      sha256 "1e802853e07e2ded9c3dfbb1e173360abfcb664911ca6f1d53ff65e123fa6b80"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v271.4/murmur-linux-amd64"
      sha256 "d3b6b77d9eb6ac55b3e497157de764dcac9f3d288c98dc37133c2c158d15b58f"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v271.4/murmur-linux-arm64"
      sha256 "86180d3ad01f58a97b22ea216fbb29bf8f2f58cd6683d5f5fa612ce9c70d798c"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur version")
  end
end
