class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "312.2+6cce7669"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "72badd99ab2878bcda2c80a6ec2997f22b1c5ed1eceb1247563b7ab7e9ca560b"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "ffe1f7f0a6e80448a2da3bb02a07a6f9b1fec5dfdbe1a5e54a8e3cfdfd207305"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "bd6b2a67a89dff3a1133dc11512ff8ef7aaba7fda89b6e7b10ba77a9af39045c"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "9e7520b196b4ed8948eb08e2e5fcbba74527b65ac9a15a7691b61d854ed47e68"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
