class Murmur < Formula
  desc "CLI for the Murmur agent orchestration platform"
  homepage "https://github.com/prassoai/murmuration"
  version "254.1"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v254.1/murmur-darwin-amd64"
      sha256 "caad661dcb8e20dc7fa8016e077a5ff6bfcc75ee1cafd3b28245cd488e4140a1"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v254.1/murmur-darwin-arm64"
      sha256 "93fc2996024602eecaba7f819757693bd5148b0083f6aeb91600d6507908d7e1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v254.1/murmur-linux-amd64"
      sha256 "ec472943abb88b5ea9923ffa6a2c57659f8b9f7a7fa59f63b3704d50cf180044"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v254.1/murmur-linux-arm64"
      sha256 "3a0dd899490be6ff6e9b5cc13a72b6706438468cb524339fe3c673f3e3d757cb"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur version")
  end
end
