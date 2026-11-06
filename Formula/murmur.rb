class Murmur < Formula
  desc "CLI for the Murmur agent orchestration platform"
  homepage "https://github.com/prassoai/murmuration"
  version "290.6"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v290.6/murmur-darwin-amd64"
      sha256 "bfd49bcedf01e7afbf1991c4495faafcdd373b6408bf42c7bd3eb6de899ec45a"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v290.6/murmur-darwin-arm64"
      sha256 "a2e3828d187a67e1893cab9f336a41d906f9b86e9dad7330ea0f7535c98d2c82"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v290.6/murmur-linux-amd64"
      sha256 "9dc9afe4c7a1351d667b0b8165b5594feccbe6fddcbef3bc1d413990c6dec347"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v290.6/murmur-linux-arm64"
      sha256 "03b087ee74e96a5cc78000db3372c1f5815d681789c9cc32c6e511f171f2ec0b"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur version")
  end
end
