class Murmur < Formula
  desc "CLI for the Murmur agent orchestration platform"
  homepage "https://github.com/prassoai/murmuration"
  version "325.1"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v325.1/murmur-darwin-amd64"
      sha256 "0b50e5257d5316ca1df30b2cbaaac4365bef45b6c788eb5f0f4b842dd436eeed"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v325.1/murmur-darwin-arm64"
      sha256 "8dd95fa41f24e0bc45b401f0ffee10dd50ba4c1130a40c6b93dcf6e2ac60d60a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v325.1/murmur-linux-amd64"
      sha256 "6c2e9b59ea9dfd9806d7711f85ce8a8fdfaa04a32f28b195e43b200f1c08561e"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v325.1/murmur-linux-arm64"
      sha256 "081f1959d4cda6254eb1f65ec03b4a8b2b5ab13943f3ec27cb85a71e869c8c7f"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur version")
  end
end
