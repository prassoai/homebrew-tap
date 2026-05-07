class Murmur < Formula
  desc "CLI for the Murmur agent orchestration platform"
  homepage "https://github.com/prassoai/murmuration"
  version "0.1.2"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v0.1.2/murmur-darwin-amd64"
      sha256 "bf7e688f491e6fe834aba8c07a9472bab081a70b61b2e959a77dcc23540c643b"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v0.1.2/murmur-darwin-arm64"
      sha256 "4f7b5051b7322788e568153dc2a573fedf1b1873d01941ffb7e9377912c26bc6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v0.1.2/murmur-linux-amd64"
      sha256 "fbd86c117d3ef9b5fd7cc7d97d761af32565e25d2533a1cf2f2ab737fa7b29f0"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur version")
  end
end
