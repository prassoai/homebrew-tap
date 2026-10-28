class Murmur < Formula
  desc "CLI for the Murmur agent orchestration platform"
  homepage "https://github.com/prassoai/murmuration"
  version "273.1"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v273.1/murmur-darwin-amd64"
      sha256 "f9a4e70e9e15fbf179394570ec5b7ac8768921480684d6b057464cf44e84cd8f"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v273.1/murmur-darwin-arm64"
      sha256 "df4e6536a326317172a04ba7892774e0fc024f7a292faca46ae842d3eb1fd205"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v273.1/murmur-linux-amd64"
      sha256 "b4d504f59a3e7bbed166ad8716cbd8a142d2443eeb2e3872d00712dc5eb9a36d"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v273.1/murmur-linux-arm64"
      sha256 "dcb6d592d8c278dafdf127512f5e3fbacfbf064bf124cacb15e5b30de2a54d6e"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur version")
  end
end
