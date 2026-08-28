class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "219.2+b2958dd7"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "67448b3e4ea1fac21ebae2ff5ac9446be415de3b7c24bd8c81f442b2e584df97"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "e72938486ea4dfe5cce832325dc31063b86b2f6e9dd455fe2d6f0d0d623f876a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "bd9e0758df5cb6f8547f2d226512eb3e48c218deb9f4e6e4ff8926bebe2a4dde"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "2debb5818a7807d1829d13e79f7373525d5db372c2ef5a4b8bdf6e7572a4d0f1"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
