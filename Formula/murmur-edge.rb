class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "173.0+de1dc4ab"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "18b17e7b5b3eedd3a566f6ed9c7420b64d451a7b66a0d1149b5f1bfe53b3f157"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "136e22f67dc52063c318c6c1b6173d547060d5fe28c4a7a34a709d32d9b16d7e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "33c0eb6ac91b185d1b8c193c440e2b9574d905dd709458c1578469438bbc2d43"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "219565eb217f4cf7392e30e3fd8a18fe79d06769efe3f987a0e3fc5ea7a90873"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
