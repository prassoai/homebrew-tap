class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "219.0+d2d1d145"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "af31a5560ddba54b97ef51a08813bf7e9b75741bb10cee125a5ecf30bf3d2aae"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "90f169b1d9c6ec309b98f467b4e157d65c1a5ce7d00212ade4d5b27413cd55df"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "f2cb220fbd27d3ec691660cf961297fe812154df2df35e25f51e784c2568b6a0"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "5ae0f0e261af3b396e9b279ba652fcdbc5829ab72cb02ec15ad984dc1bd13fab"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
