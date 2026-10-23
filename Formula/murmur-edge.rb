class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "269.4+a0ac235e"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "57bf34c1a60c9d1a68a9c191f05fc4c075b05632df8e01b653819cfa806a21b8"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "023e3788a5edc65e9e0f06e2efb17789a34b95f471d8417d92de36e570b14b56"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "0f82cd357b1ae0f2ab6ffa2b17a83ede4325eabea48d1dfb7f935ebb6787cdfd"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "38a2f8b36757947004ab1104cc5c6cf73e3c60dfd8c67afb6ccd43c6b0cb3702"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
