class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "140.4+9e8d4464"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "ac907c4fec9faab7c60ad1ec8dba68b51f6bafbd799cfcf52ca4ab7d8f7fdf56"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "01aa2b8cea87237f32c6582284e4d3c69eb9db4ee5415385ab86f8d1042828ce"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "8739ec07f6a9d70f3e30a8ae52577a96a956c39d77f555685823eb33e7c6f24a"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "97ee3c9d26052744b7a795c1e9e741ba79dfd56fd100273cfb72682ef387a711"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
