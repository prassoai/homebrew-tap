class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "289.3+c19caefd"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "8ff188027f71f73cc8f3607607b9e2fb21ce2ed11e542c4901e3004bf42b0ddf"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "f4cd96dc49162df7a2e17fa62af2e1f6c2e0d8ce9bd88fa0cab8b279ec9ff973"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "09c7d093b45a64599b8c037f417767968499a1e9a0cbab3853ebd2b285c634cc"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "b7faf4bbd51b15a05c6505e9e47f62a10395e0b35688e1fd2392151fce035284"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
