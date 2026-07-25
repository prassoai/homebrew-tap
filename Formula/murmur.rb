class Murmur < Formula
  desc "CLI for the Murmur agent orchestration platform"
  homepage "https://github.com/prassoai/murmuration"
  version "185.1"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v185.1/murmur-darwin-amd64"
      sha256 "8d1f8c6be9584cfd7d6d151af2b709d3c01f855517fe2403cf933cd6e0866dd3"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v185.1/murmur-darwin-arm64"
      sha256 "cdab993c9cdfd2c1b75b74babe6df64295849d02e1c5ee29051584cd997ec681"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v185.1/murmur-linux-amd64"
      sha256 "9ad58791e6a1cda1d4f1b820cb2658a88a37a979dc608d7eaccda74cb35891d5"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v185.1/murmur-linux-arm64"
      sha256 "57a871b037717da8b13058b526ded55c61b48fb6e0f1d98bc7c6499c7be200f3"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur version")
  end
end
