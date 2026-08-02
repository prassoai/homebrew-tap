class Murmur < Formula
  desc "CLI for the Murmur agent orchestration platform"
  homepage "https://github.com/prassoai/murmuration"
  version "195.0"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v195.0/murmur-darwin-amd64"
      sha256 "fc04440538b6e91f1999b76fe7ca242152d5e28bb97b74c1b13ed4aaca7f060e"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v195.0/murmur-darwin-arm64"
      sha256 "7db366f0722af0a932ff6d64deca1a3130badf6e66e6436924bcf4ebb064cb09"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v195.0/murmur-linux-amd64"
      sha256 "a45e3fccfbb9f9e137756b0d780ce3e15469c52367350f55075bb0bedd1f6242"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v195.0/murmur-linux-arm64"
      sha256 "202e72d8c2e765ac412a6fe46b1c5c898c45cdbf0e7a8e26648f1e806de18a87"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur version")
  end
end
