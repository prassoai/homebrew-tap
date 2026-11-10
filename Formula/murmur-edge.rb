class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "293.5+5b52aa5e"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "3359b1f4a6879b43ef92dfc007375d02520bc3df7b5c9070c8cc3696954a76b1"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "cb3d9115eba17ee755e521d8aa6210b1f4a05e2d8b8c016cf510dee28769b7ec"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "b6fce7b108e488b5c5ea60141c84c7219e08ac718be64603c05cfcbb35568209"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "01bd6294545be7a1991e386b2df0148b5b10e23afba2e1bcd99fa2ea4b30befd"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
