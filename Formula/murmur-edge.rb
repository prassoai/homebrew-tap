class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "278.2+8e9097cd"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "6098d270496e7ab6045817d4a8f8fd56dee2d859a1d4d2f426d42a3b9dd95c4d"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "6042d088688c27e98dd9e00a4f4f7abd662b4c88c75f251787ae7b3cbc3cc716"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "de95204a9a66174668bc9d6c9e19b5d7bb965889731ae5311cd2146bde012348"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "9f9b262cede45deb6cb906de5e9a0e28187cc4ae17c3f3927bdcd14b8dfb5d88"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
