class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "243.0+492f3454"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "93ecdfacd44d8f6f5dd5ce29eb20676fc829bb53ed0c1cf8c3fa2f76e32c6df6"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "171b6b10fd74eaec9d7d354e36bf1867b55931253cf87cb9cd7c61ba12b61b5a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "8d5d0e9aebb46d65b14fa8240bcb5d255a67e2c0fd19505345cf8f3443d89c81"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "615b7ea5dc37491d112bcfbc44cc5b4279f5e73423e6ee522ca00f8e05bd0e1b"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
