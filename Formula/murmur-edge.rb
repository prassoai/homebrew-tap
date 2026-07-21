class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "177.0+b8925e3c"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "dc3adafc21ddf463bf02a36e8dbb189c6fa0ee98091f2accf53a1c709ff2eed2"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "0294fc3b40dcea4606d91b3e5ff6520ee766c7eacdd0e6891dd92483b8bf199d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "982ce4b13e9c98c1a3cf3f58593bcd324f5511ddad7f3cecd83b7de4acce2535"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "53709800d06e63136028ec706298ce76a18fb3c4c51ad1b4d3eb8db2f9aff80e"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
