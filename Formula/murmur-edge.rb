class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "213.2+9f7f180c"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "62f62bef438092211d2f96e6abf42f8f1b74e6d9dbeea2bbabb74183b141cd62"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "a9e5e49cc3673b98d0936dc10272ccdddff8d0d0fbf0bf74ea47b4861a938d5a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "2512b225fc20fb8b47ec15b6d35b5c1615796ebf2fa9dbeaa9fa31a8ec9fe41f"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "73fedfa8306a0d2f7e129c857629f235cef7e5dde30cc7b55e186c86f9cafc26"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
