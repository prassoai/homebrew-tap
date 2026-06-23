class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "157.1+e5559c9a"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "58d7bbb4eecba40fd0bef35410a4f2aecc6d9b9d7eadf5e6f93e8e9b0e8112f3"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "488587c5068e5b8a12b5bb5fdce65c23cbad3a642ef08b456e06734c7dc9ac2a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "650fe4a3656d6b7a39aa8a44dd4d16df1cb5c7e528eb2f50af0e50b62ee05da7"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "48733b5a05b24dc86ab87886b0a369765f7de248ccdf7c095c86b05f3235a572"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
