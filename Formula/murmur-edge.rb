class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "322.0+922dbc6d"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "9822b02277f5e00cb7a2d5b614bffdd4d4762497898aa65cff8775069821e42a"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "b7ccdc5f9faebe2b5fb62f072ebb58b705c6d440db70660a6d961d95087c8626"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "5444a50586a0c56bf3737422ad4265ffe0ba6ee3ed487ecbb7e88ecfe83d5ca3"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "84a1253f569aa70524eddadd06647178a306d54a175f6e27d9a42b3e24e32abd"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
