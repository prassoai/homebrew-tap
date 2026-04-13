class Murmur < Formula
  desc "CLI for the Murmur agent orchestration platform"
  homepage "https://github.com/prassoai/murmuration"
  version "0.1.0"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/murmuration/releases/download/v0.1.0/murmur-darwin-amd64"
      sha256 "bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb"
    end
    on_arm do
      url "https://github.com/prassoai/murmuration/releases/download/v0.1.0/murmur-darwin-arm64"
      sha256 "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/murmuration/releases/download/v0.1.0/murmur-linux-amd64"
      sha256 "cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur version")
  end
end
