class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "149.0+ce533135"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "7ecd30983983d7d49b4c448b3b727c8441488c7bcd6d9c6a8e0d738f1bdf3a09"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "6df6cae6f32cbe18d0d12622942d35a28e16903f489483b1a6b5622e9fc053a2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "f352debdc8c0dc7fad7c4b0623136d1c8ba19ad33ae9dc8afe7694b2b40109c8"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "1e1c84ad8cf45f9def35fcf4b2a2f86bc2d8f173ea2896ef759ddaedc33c0017"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
