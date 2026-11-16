class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "308.1+19743197"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "e84c574dcc3f130b0bb2fcc41c1fa0dea3fba0f24806b56104f540e4c2b373a4"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "1f557a7c7a339ad817cfa5a9ed933559e7d9c022c0a6381f0880341a40536783"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "cd94cbb2815b8b5375bdff97e677ffc7b6f7c6f51a15fabf0c22c422db7e655c"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "97fc2db60d3953a67cf518aae5eb7a36f31a81f61acf45c99490e20341ee4186"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
