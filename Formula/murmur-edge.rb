class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "164.0+3bf12215"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "1db5d034a5f4ccd3a29126c61e67cc12d0c78eab5347df6eefab17a99c3908a9"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "4c390b775cc7a53a5aab775e1781f034de0d799ed3db25d8abeba90726774f24"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "bb1430aa0dac1d90d372b24bd914eaa69236d01dbe2921934a4df7a36901289f"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "97c1c9a7f885e37a5ec5254b7c9bf35c37699e6f07d28b5ff78c416d8c1e7716"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
