class Murmur < Formula
  desc "CLI for the Murmur agent orchestration platform"
  homepage "https://github.com/prassoai/murmuration"
  version "72.0"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v72.0/murmur-darwin-amd64"
      sha256 "15f1321ad5e95c711c1fd621d7a1995c28f2e09cb2faff44b628dbf4fc85a756"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v72.0/murmur-darwin-arm64"
      sha256 "707ec0e6e7f4163a5e1f971268d42a0a7aae18f839a15dc165778f587751f987"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v72.0/murmur-linux-amd64"
      sha256 "c60c582d5a8a079c652dca8aff1d33cbdafdd81d706be7a55a47c294f7d5cea5"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur version")
  end
end
