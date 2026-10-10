class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "258.0+e3ca3c92"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "2ba69f99bfab1af5bc9799e7c238c394ddf0fcd3f73c4bae8cf20a359e6cda33"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "2e09bdac877eaf76e894e5a25708fb2eddc5cbbee7cb5dd9c4db0b4334268210"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "1301117b8a81317da1b597757b6cc0b8dab5089fa33d56e957a619ea68849dcf"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "07d1455f67d663b3b4c7631cb46d26b60b6c5cbd38dcce2b995bb4ca4eb7a6e5"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
