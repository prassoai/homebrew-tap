class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "229.7+24fadb5e"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "4ae778b19b5f340ef6d8ed4de3f171a9056405a673a3c484d18baebf08c5bd27"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "0deeacb17270c3f4e69d96d10ec42ee786c205ae434feaf08fa0d190d27c98c2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "92ccb6ee1a11263b7b7a81c1b9c469f2a2c1c9bcdeae5af6b08a52b1451d7323"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "85bee619f3c497fa833176140fa8683c9c3e79428b43307ef8182933b137ee45"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
