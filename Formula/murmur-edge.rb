class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "254.2+08d935d7"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "671ecd9aeb3b4c7f092141203ec9ba15478e7244fd6429660dba79a4a904dd3a"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "51918dd38cfe0a94d9623425d37e5c7f2dad38fa9975cc52eb4f156bfa6c3ede"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "932f414ffc59aea7c5c657ceca08500ba6b66be7ed67d3959d3989d546cf64fe"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "3460bda6dc8b36d9d5670af502ea3f215e31d3c9f79e9f909dc5887fcf92e3db"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
