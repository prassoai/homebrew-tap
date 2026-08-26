class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "216.2+465e6475"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "6f30301dba53b9d9366d28f2e2efea652c37ddf1406a5e2ff35824eb1c577fd6"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "8eef9882bd4ee3f4ad5aa79e6cf8cc864bc89135bc19f44249f1287b26b00e40"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "560501d6fb3d146c5c0bff5d1aaaf166b3c4c48ff6a8a384f912f74e2c6c824f"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "7ebc329dadca91ef8b133bb93a7d7d2adda38e2c211802435d1a2a14f934dc11"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
