class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "158.1+cc31d710"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "8dd3a88e8ae1c5c21206d9c4a9366cbf8c72a67dc2d5b53875eb095fb2923d47"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "9e2eb217be6a99c276060595e9a092ee8198a1b8c063f7f16d37af671ae95d9f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "efccfd03b5dba53b73f116ae51b02cf9a7f19c3d21f500bf0f883157718ad23a"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "0bc0ec2cdd4929ac9d81c0d15ff81338b01a6a0f48707b6fb26317346080d18a"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
