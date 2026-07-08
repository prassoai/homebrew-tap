class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "166.2+f23e3015"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "2e874fc2bed564ac023b3d600e0e0211b8b0f5135914d2321ca20180919f8d58"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "820174ec7a05782c0e9d3b3be549a4d29b081850e954cfe4c3210b1d0b2f93ee"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "8f4144ef6841ee57aecd7d3bfb17f21e6d66ead5b953b90c4a6119f6930784bc"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "748019f479f8a0e283e4d3c5ebcc8498eefdccd55118a238834bd8b361461f12"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
