class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "312.4+e50eb9e9"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "72d188d9a0a86a13d09c188563c36052fe1aef1726d108ecc3cbdb92aac5a060"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "b3fcd0bcc0c71eeffd69fb664c3c88b66d5cc0dbfed42a54e5236bf70b3194b6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "79e6709bca9ebc7e4ce89b5707e21f752cc0fb8da6f2894351febf81ce473945"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "ef476769393510dbe58edfad070279f6ec3aa87bfa1089905ed81d6123f1b1a3"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
