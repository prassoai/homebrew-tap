class Murmur < Formula
  desc "CLI for the Murmur agent orchestration platform"
  homepage "https://github.com/prassoai/murmuration"
  version "95.0"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v95.0/murmur-darwin-amd64"
      sha256 "b31f7508a9c225cb0a1c95f1eae49ab89c84d912111d36fe1e357a0e26d6da4e"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v95.0/murmur-darwin-arm64"
      sha256 "9b5a0ceba6e656845c40725055e9b7041dbde82bfbf37aa39aa25ecc1949d507"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v95.0/murmur-linux-amd64"
      sha256 "26c4f754af387ad6341b679f958b8b1205009162fa843f01447bcbba019018d8"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur version")
  end
end
