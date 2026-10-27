class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "271.6+8d9fc1cd"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "431587ec23386def70f6d83e0b10ccbe2f648fccb31d19aeacfe0f8065e0306b"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "747567991b6c35d56109ad006472d1d9bb2f31deec9a966279afdfd5dda64f76"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "2ac9b0aa433a64e50917f0bbb516630fbb75a296bd7ed3eac013dfb2ade49218"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "6e2a72384f2f0a10af3757d9d84be62c426fa6181dca1fe4640ddda78e384edc"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
