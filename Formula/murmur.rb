class Murmur < Formula
  desc "CLI for the Murmur agent orchestration platform"
  homepage "https://github.com/prassoai/murmuration"
  version "284.0"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v284.0/murmur-darwin-amd64"
      sha256 "c2d6ea6afd6d599c2495745104fd7dc9c6596825e786e8a4a40d3f2449922672"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v284.0/murmur-darwin-arm64"
      sha256 "423e2be52b2424c062c52f3aab3ffb167d0c4a3375db56fd04f00e5d875b36cd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v284.0/murmur-linux-amd64"
      sha256 "b15b882a984b03fe4b2c208a4f1f47935cc3dcc2b8b5ba769a2b36a1ece90f95"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v284.0/murmur-linux-arm64"
      sha256 "f5133b2d9b5531a7d380a539a815836a4c9ce17a80f85438878a30a8b6cb11d4"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur version")
  end
end
