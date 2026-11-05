class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "288.0+b3336830"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "c318758953273f235a30456c4d410ecf5c0b85ecfa649c6e0ca4fa4ffe89342e"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "f2abb8df32ef1243c9d2db1e0dd8e0d4f2ff33bb1b3c355e6ab82ec19d7bb7a6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "a23b73a09196d16b59ee5a6b3b8903a7a4c4543baa6953282ee1ae1cf40689e0"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "27ddba5bcd816fb744e0551b7c7bf0a06a7c5f8b75bba41ab7b4122fdee795c9"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
