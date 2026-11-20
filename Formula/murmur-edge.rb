class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "318.3+7c2ad025"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "29d6568b70f179373466475f54d93dd5e661bb95a2c3ed734905f003b07c918f"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "7395bebace1c9cbe4b4487f826f3e5eac2829a1f4cd0f48fe638552eac08e9cd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "79f085d5288fa7c0fb8b10e187a475dcb03dae712858fd917e11b6a8cc0c3b2c"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "30d3ce19b097a8ed2a9741eb87c6f9e1f56a4f3a706ef6f7370f61aa677b0bc8"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
