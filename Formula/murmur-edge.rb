class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "214.1+74ee9d1b"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "c3bfebcd51b0d24aafd4b95b6014f513ff2181e1b4ff55c27da5a46c200a3e27"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "6f124b83949818669f97da043fe2987f0222e8a521e79a7b51ec5bd65443ea7a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "6a7779b6f2181556414a7649a1fc157de918806146f0e6a73ac12444555eecdc"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "dcaea7d52a8977c8dd389cd5ac9765977ec64b6ae9b078e9b9d504f9cc49b84c"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
