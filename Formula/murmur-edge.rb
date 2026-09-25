class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "235.1+2063fe85"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "973bf28fd426d4f66742a47f13f6e57696be4235b175f3a773bb602843931867"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "4cc2e94ee28adfb8d2761a018f815626b48c17faf7f175f3b7452539d8aa3e6a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "4ba2f5cfbea4d2f99e7e8a59afe593fb721ffbc9bd4fdc65c98ba6d3477e9841"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "e57fdc2362e54cbf4408b0eb5db5475451fe17051a83b17167a9c43e9af12ee6"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
