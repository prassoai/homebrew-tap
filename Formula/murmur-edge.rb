class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "170.2+9e76dcac"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "cd059483f50492107a7ee55db7fcd2b723ee5b08743d4932510b02e741f5a1b8"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "b2c05ca87e1ec6d6015b2cd6a7f37174dbcd261c9fb95c9d13d05f68c17d2d83"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "c4f6396f3e7a142f8035c3f9fcf9039498d40a970da7aab09f3a13e9b1403c4b"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "3a3503892c0658c633e9b56ae2534cc966cb68ceb9eba31ba6a76bcd51f84bab"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
