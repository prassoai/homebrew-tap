class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "298.1+c4349ba7"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "51cbe5d9564751b9568c36615acd6e2ec6f14ad025b562a1e48e1236d10f5cf1"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "70f565a8b1067ae2fdb2f18439463feeaf2ab0e0b5babd9940506fcc0bd8fa23"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "6deda73acd727ec98521705a28d5806fdcd3c100d9f9c682cb894bf3a06a6a5a"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "75c991f5e032dd95942fa7d4184ffb3a5ab2212b46452d0915a6ee4f098d95b1"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
