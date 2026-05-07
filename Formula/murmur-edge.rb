class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "68.1+372302d1"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-darwin-amd64"
      sha256 "2b9d175326fa51567eaa1e7b9b2e75b38ec94aa60b66fa572742210fd62a48d9"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-darwin-arm64"
      sha256 "bb35472065f5a9a536751b3fb98e73bd70b85f986a45e1ffbc9c11744c0029e1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-linux-amd64"
      sha256 "adfd015480bc092378e20fab9b1dd1c5f8f02f4eaec605b54a1beb2f1f968c0d"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur version")
  end
end
