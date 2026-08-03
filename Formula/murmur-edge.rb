class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "200.0+3b5bdeec"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "55de19b9516f94f6f79520dd62f531f53d91ae2d73a09249d1fd16945f44a552"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "9efac12fa54f4cf9a73c27ff7486276626dd43ed673174b4b3ad389c11b83fec"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "10e046d8deb4824fe09c659d998e228bae194c3e1cd9748f1bc9b17a80cb8eaa"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "6c9abe0df857e16f4e2b69b8e859e323cc8ea95ce6fab8d7d00f5b88d6b7c9ec"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
