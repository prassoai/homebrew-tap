class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "142.0+c9328ebd"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "83bde4a26ae2ec6b5d74b57cc4fc31898192d6f1bd91bb7a3210f19c6fc44167"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "0d3d0f9fa53ca5075ec04b80bc90ce989ee2d000b12c3abc65de8ad0cac3c1f8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "693a14849ad16331db4f68c02b7b8d9caff0b6056f3405652cc9514a5b0eb05a"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "347cf31fde47472638fe9a27a37dbdbf39ca11f5f5b0a9bcf6ac297b9cc15460"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
