class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "250.3+5274cd31"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "16306b14d2f0496920eab6849eaf1c418d6c2a6ac6540b4e25f0b64dd03a8c88"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "e472c3bac2a493bfdfdd89d6e5fa4bb0c71a40be94ccdf8ebe6e7712136ef92b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "a12a02cff810196cf28b817672743f65b0a1acd0a4f9acd3d0cba75ef417e08d"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "89e56fd9dc8192a1fd007b99e6a02d58e52336903f4f69ff4d752bca2e2850d8"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
