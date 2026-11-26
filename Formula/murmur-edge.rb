class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "329.0+86fd7d16"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "0d67fdb5632b981de1e9444e0592f390a36e6a11016e1b122fea57c5e3b65e93"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "de3a631e5bbf1afd9cbaa4e5b4caf2a993254f253be99dcccffca5d8b7ca2124"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "238a3ce3d4c34d28a672fb0a8ca31ab6f1f100fbd2d312ab1c9363aab8d4902a"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "58331a58876f830f258c0b56985542d8b81d23c13db8127d4137d32ddb0ddc20"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
