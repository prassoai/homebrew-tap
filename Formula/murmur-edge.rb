class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "283.0+f1dc7fb9"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "80d40663cfd19cbd6fa6e4200a31643b4c9bbcec976b2e132e428efe0a20dfef"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "a5339cf8833c9169d964b2ab28301b8aac6892b1efd38ba817c347f649857369"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "5a40f95b9b58e4e2ffc322a9871a558630b96f935e8dbbe88a015abca72716a9"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "d77f9d1f6611d9e686d9f95cc9c84e6dc8f93855cb9684e1a3a8da39fe19337c"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
