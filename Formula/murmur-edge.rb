class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "262.1+d9273e3c"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "22808520d0baeabcd293ffbdcbeadc5c44363511b066e18a0a268f1085b653e0"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "5c53f3f92bcda85ae18c1d4b586994294a2114edbea71f17d8e101cacadb2de5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "f18ac16fd3b0a14145705eacb00d069bc9f95905839d0c1f6097cf5933b788e9"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "e42b2ff6ef3d3541fb2c32e77e9c2abfbbe94d6bc38637e40aaf048eadbf3dbb"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
