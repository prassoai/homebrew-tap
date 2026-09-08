class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "227.1+fc203c01"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "b1d70280caade5dbe908ab750280163ca870104db9d67b0e82557fd1dd7dae42"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "e0b684f24bc1dd8d75bf2bc7ed98897e2d2dbfbc99f79f9d11d0d2ecdb6ff465"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "1681563a127bcf998a5a77ba093ee2948c0c38a13f61ea204b2d9cac8e8f205a"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "5ec4e9b3b9eb8ee73993ffbd4bf6fffe02f2b3814d3ca2970109915b78818c4d"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
