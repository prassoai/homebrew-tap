class Murmur < Formula
  desc "CLI for the Murmur agent orchestration platform"
  homepage "https://github.com/prassoai/murmuration"
  version "98.0"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v98.0/murmur-darwin-amd64"
      sha256 "281071480fb8d3bc97cd8d3453d386ef6fc8031c2e9b1d1911c25c75446685ca"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v98.0/murmur-darwin-arm64"
      sha256 "56103d3a6af434d3bbe8530783b3ccd617d38de8237fbf419a1869f6f078e06d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v98.0/murmur-linux-amd64"
      sha256 "45d0874923844363d6dce5a44d548ebd6683072208baf16af5bd8d55c4624bc4"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur version")
  end
end
