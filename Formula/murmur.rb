class Murmur < Formula
  desc "CLI for the Murmur agent orchestration platform"
  homepage "https://github.com/prassoai/murmuration"
  version "76.0"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v76.0/murmur-darwin-amd64"
      sha256 "772f14e345b874a5b7c9b6593b052b0a8c7e4db3e1c8403122c3952aecc8ddf1"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v76.0/murmur-darwin-arm64"
      sha256 "db29dd347bf179e6fc40ddb238cb55efad9a9efb5fcf096b411d66080634881a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v76.0/murmur-linux-amd64"
      sha256 "e8d248ca7081f059acbfa971cfb95748bf35ae01508c827f3c787f6378af2aa4"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur version")
  end
end
