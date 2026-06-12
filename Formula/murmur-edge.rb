class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "139.1+e4e45e7e"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "1c4ac2205dc9a56c829bf75cbfef0d588b98465cd3bf95b1f0ef7d361340fd20"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "45763756e0cecf796aa5258e49c5a2457b8958f421d63d43857e1c4e3eaf1201"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "acb21216140bbafc62a59f567c2bcf2ab1d14411786f1dc544e916f73ec2f5ad"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "36f680ec44b94f92a90fa5c23fcc2c4ba18a157e9c7796540f421f2a02e9cb09"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
