class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "227.1+f609a4d6"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "b7725eea7195c6c019b69c8547c0871c34a0cd528217b0f8394eacad5bc8d77b"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "3c72a68605b5fd5ffa11bd8823ca9bd43b5dea50a1d10733fbd275a0e2567ca1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "2bf4d101d9c5ff8f504f0ceb19e8cd1d29fce1245a48a56fe99e1fa1ab8c813d"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "cd22e78178fde4f1f079eeb2532c55b3ec34ab1f88b477d08ce1f0b8d2b27b3b"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
