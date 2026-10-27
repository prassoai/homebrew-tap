class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "271.5+5d1bbb1b"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "07576ec7244f87d0d7961d4f7bb6c22531a8e7005e611dc8274ce38587500916"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "6c5c2a56cdc79d2c6bc835d10688e32799a1d75cf940000f3a919b92c5c65313"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "a410a915e40cc401c1d8d6a2df2ac107c355bd77ca990497c7efadefe5ec0ac3"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "318729344ae0cb96be9b2911b6bbce7e55d2bbc896dbdf31f6d6171320fdb4fb"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
