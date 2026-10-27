class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "271.8+c7f2a073"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "fe94db8de3a05fed30c8ea50bd1aa172ec7bd2f18f86ed21cc3217b24e64d454"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "b9b24c8045312ae7fbf3f0799bde01ef0cd0bc7ac412cc356ede1d32f45c324f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "9c4c8f0695a07f3e68ef09a2e0158a3510d9cb35b5470329b7c5ec1c1a3137e4"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "9e95f58a4d5ab70bba2bd374928ad6ada7cf88f1a1523ab391da0c8bc7c24604"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
