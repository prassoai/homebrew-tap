class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "216.1+9fb1bf55"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "9abfd9fb4199c66ea35d54fe5da18ed2924cdce81ef87f3adf4fde4c0b361142"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "a32c2f4408fe2a4ee68a48622360b9d082a559727233807b0d9fdbdd70c9b197"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "e254f06e77b6a2d1db6ea9d14009a0cbc1aa8ba5f7e68e3f4141483a217d0c3d"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "1502794983b65c55bb69a6b4c1d033dc7d7acf9e0ec21ce5a1fb8dcd644407b6"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
