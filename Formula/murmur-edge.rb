class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "247.0+78e2f5c1"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "fea634fcadf4fcbcf200fa6f62b5151a0e84f09937920b8d49cf991ba0930f8b"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "92f63d46ca3aa3c7cb7329f0dbe5b32a89c30e3cce30e2465070ae56407750c7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "bdc81c7ada1eccd41d3ce326d5b815470c8b10a7538edcff50efca69e6ff618f"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "22b3e9b8cd7f7a42aa8bb554cfe4321f88a1cb59e0c367fe6092617716475061"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
