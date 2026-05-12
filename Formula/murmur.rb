class Murmur < Formula
  desc "CLI for the Murmur agent orchestration platform"
  homepage "https://github.com/prassoai/murmuration"
  version "76.0"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v76.0/murmur-darwin-amd64"
      sha256 "f8fcefbdb6e3f8899ffb411120bbb7a9f0c8eef4203066e01c1764e28b1a212e"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v76.0/murmur-darwin-arm64"
      sha256 "f75d4d934acd6ce015ac3c7d437d29dac92a9c5679fd81f0070266ad5b256ee4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v76.0/murmur-linux-amd64"
      sha256 "fa7fcc58c5092fcca4fd5fdf4edbf3359e910ca2fee4b2dc63e7da27fb5a6769"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur version")
  end
end
