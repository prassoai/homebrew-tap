class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "127.1+d5ca15d8"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "7a79ce39b1b298b9086808327ca3f8b2b5c308270d3b70fc8553f1aa6585ad67"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "4dbe41431bf7f1e0b9af0d5b8b8c352b82bf5ab2cf118620ba7a2a011cad3cb7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "ae9547a0318a857aa9b06ce3b7c368c74df3c70a27c4769db2d06143b210aedc"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "539b4e4952d9d54d53c45c09c1416ef6238c52e19b9eb9eb12df0c8e685cbc05"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
