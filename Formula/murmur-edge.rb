class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "324.2+a2dfb416"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "669ec50e7c0e54d499e8c3aea05fa115c1a4546d399bcdb28a5201ec6942adcd"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "06002b630cb13f5927ab442a3b2cd7c9a6b4fe0559433f1abe113f7c7c8de382"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "eadc1e3dffe63fbf3b272d7e977cf3fb3106cb6afb6113831f42b18a833f3716"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "d51b9c9520b0a9a4a2d98568c5360d520dd8ed3e38c38c1ccb1e507761c3921d"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
