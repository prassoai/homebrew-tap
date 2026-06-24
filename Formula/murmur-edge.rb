class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "158.1+8a10360d"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "1ce2e06fa8bf2e2cbb9e624625aa6d3a39d55b87f8b7c9ec7d953397d0d97f7a"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "5441fbcdfdb32a4c912704ee96c60121f6ed90c5e6c453cccda31be8720fa63e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "531ae334c2bb32fbbedd817e0d8eb63512f45d48ffbf8884f8187ce7f9e37efd"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "71c9cab04a8bd76d040cb2b98a444d5d22dff431670d111f5263a8f1a538cd83"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
