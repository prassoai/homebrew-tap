class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "235.0+232e0f00"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "a9915c0f4604d8466cfc0b4221efef35eaae11ec4e44e3ff0735bc6bcd97cced"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "77adba46a12b5424a52283f8af10f38ff562bfeaecc12b3d08ebc125dcaedcfd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "b88e3b0d355a09535a01d1081bc6adf64973bf59e58c520218c1b61df0fb2068"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "fba6e1b482e429f2e6c761e8eb262e5aee5a63e4235dcbb33ee7c2e4fe717ca7"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
