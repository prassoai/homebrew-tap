class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "146.0+9d1ee8f5"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "4eac315eecb3c3a642f42392ed1c89137d2db307c6816f7bc05b94f8c8205752"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "a9551f80e6585d7e8ad0de5cffa3983053bb8cf96a45cd2245d453b3b6506130"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "cbead178d0878fc3eed86f7b2b7742cdd5a03ef6925b326b37a04a1dcff242ae"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "a2b6ca572553d79b1a62cd02ab0d8f18c8c373beef00128328718f1588324ede"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
