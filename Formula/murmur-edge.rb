class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "254.2+407faab6"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "0d7af1f723e5bd7fc8c7c73c4b7592c8685186b0f8ab88926a361c7538fd2227"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "ea9dbe16e7ba2184b395ea2e0ecfe6d12355643f01e0204fc19604e76bf6dc45"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "c82ab1c19729c79cd3a1a0c55d146918a1adf8b936475cde57e14c6f1c2e7d9d"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "67cada499e334a38ffd8981f9033ccc5bf99b4d59f165d5031f1e06038c3d23b"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
