class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "229.9+6671a245"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "96d5a7f2fc91d4d63c39bb91c62c8fe6297918e2d1a51aa7ed5ba2449a3e3f23"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "16312a08abf2bcb62d45cfd18786f990e969ac4919d62922ac2ed9bd23c2f55c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "4ba33b3fd62b5f586ac11936465ebfba1a63bb18a270e60abc0cd98c2c689c71"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "f742aec2013d127b9529a4ad7ac9ae47a3faa50e50b9da61faeec27a21ca1e32"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
