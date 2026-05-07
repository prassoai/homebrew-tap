class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "66.1+3e5df2fc"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v66.1+3e5df2fc/murmur-darwin-amd64"
      sha256 "f71abd8fb1367609ff8091b8da0843130c4ab1383f9237306b6da4892984db14"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v66.1+3e5df2fc/murmur-darwin-arm64"
      sha256 "9593deea0d7cb91f2b1ce0b106ffa0b870d90cda8e6e8e071428f415e7117fb4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v66.1+3e5df2fc/murmur-linux-amd64"
      sha256 "4d6ab78b1347c0ca1f5f31907f592df64999d157c98e59def7aa9380f29a4d93"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur version")
  end
end
