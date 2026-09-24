class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "235.0+902e4aed"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "11bc029ab9a1997a749186603f547087c5df6e7baef9323154dcefcb0942a9af"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "986490c97b5a485f7f8648f4fe95b65ac6ff49b8e25e0b236e50ab2c1da6ceb5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "0c3769f7bbe77550d8f1c6e00c6f5f615cc41c8734ac9ef8ef088e24f1d9b579"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "864454bf9ec3b6b3b7e234ffb50e6c73578febd0ea9afc09841c0717ce074079"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
