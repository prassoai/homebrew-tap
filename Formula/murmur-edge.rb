class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "165.2+030c2192"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "ec97559dfd5273b9d34bd9c1e21c6eb2087b26c3db12c1abd351d1d7ee002593"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "8cca08340c85aa55a218c1b6b4977c64cb03fe75e1ab8baa1021bdc4249de19d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "31ce44892f72ac3a689ae16748905d1e01b45ab506da9e5bfb2f2ff842430173"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "27879d6ca5ce4bfdb2d921f0e43adadc1da8737c694d2dd6059d676bef4a717a"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
