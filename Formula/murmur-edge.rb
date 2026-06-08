class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "127.0+0ca70856"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "295f24d7d2e7b852ab4cc0db199acd2fa74c35933c68b4dd57094d1bfe196e10"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "1fd31d8ee8a25f187fbdab3f1e66c1b47c319317f86d0cbe540a6072dcf4b387"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "9111756e567e55a69309eaedd4b2cb8fdabb62a83c6cf0ca20c34b68398c0a61"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "01ccaeda8ace0d96aca79b208dd3be993267b7cb69ae7385080963c82dc93271"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
