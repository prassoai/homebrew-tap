class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "232.7+ce89e236"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "edfc1fc64b73c7f23d096810eea0a89460cd9f8b689fbcb67ad28a5f7ba885e0"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "b4fe9192e03ea93e9d7b932b6c9720997f5ad1f6e09803abf9bb51f2c2e0a537"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "9dd4b0d16c1cfda1d828f353115b0feaa9763e643c434dbe243cf6beb00c3bd1"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "8c462a50b9498cb64c3dc69de1a54d4ec8f850f8f1174ad34ef48b601b01c095"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
