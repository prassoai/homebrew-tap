class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "331.1+a1e6f9ee"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "0cf982ca410a8b41d03bf6b23fcc899c7dd9472eecd0c16aaef41351170aa062"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "b8e2bd9fcc8c748b09c5ba8d29efce07caa74ac7368b6b4d84fd9a1eae6a3fd4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "4133fa24fc316f2c5ca227f4aa03bcef2b71e91b625f917513d3cf6636a57e09"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "8b9ce7f162b8c40c1c696dafe72245bcefa3545c8e1543c51544ea9e7084a048"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
