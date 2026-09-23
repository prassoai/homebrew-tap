class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "233.1+48f13a58"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "bbdb2506ad4a985c9e75d7601e7c04ec43ae641594bbaeea1264dbd0adf17a99"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "e9a6865356a865799c107f111b3b6cbcf57d8b8bb44144fe7dfda5bfbcf07bcf"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "1c6ccbe8e5e8d329ef389dd825433db90550921c6f65531c9570af8b70bf5a05"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "47accc8c87564854a3bbf4bc8e1a1dcc2c033f7db3e8606a999ba3452d44d128"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
