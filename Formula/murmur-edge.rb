class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "280.0+658f1e9b"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "99a42718e7e38bfb7fa68ec714d1c0e5bb7b088f4ff29b71ec6a98fb1580dab1"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "f82a1d058c8d78acff69167f229cd7e2db2b88a1300a5dc3d4e5311d1cbc9e64"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "d4ae9b9da752b4d429f7ed20b10fdd0118800261ef22146a0e7bbc91f5697fe9"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "7bcc7516b04dbb6ab5eaa7367ce7bcc1ae038238a788d7d66154cfd63c247dd6"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
