class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "278.3+a83e5781"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "101573e79041cc43547bdf353c3fafaee1c30bd48a92f33f243edab9fe950f24"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "3fb326c1ade00de476340ceb452be592b40ec63ec3a8921b7cbcc64986dd250b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "8ddbaaa24e6cec2aea8c7d4f7d0bffe1c7b5bac64c8a8d91c247b15847e2b8d4"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "fb1ddabba1ee1640d469e89ad70caedc4b465e0fe292abf9a9c1b9e3aa68934c"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
