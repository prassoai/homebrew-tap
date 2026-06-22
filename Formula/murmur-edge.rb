class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "157.0+bfa97ea9"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "4f002f5b4914101cdf2c0cb87b4470286b51c2b37a7d2b924eddc87735c72bba"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "cf227ee0e0f3b9a3177be1785e7d10ebe3f59e4d03af3cd6772c8b75de9d8319"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "32376a20a869a348c02cf55b4beacb1be30b08b7eefddd5318f58e9bac1e5dcf"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "4a5d8c45e5b8f6726281d68f920d61e1fd2e15de3d538e43ac8366f2e9a95b11"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
