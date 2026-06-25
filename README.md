# prassoai/homebrew-tap

Public distribution channel for the **`murmur`** CLI — the command-line client
for the [Murmur](https://github.com/prassoai/murmuration) agent orchestration
platform. The same prebuilt release binaries are served two ways: a Homebrew
formula and a Nix flake. You do **not** need access to the (private) murmuration
source repo to install from here.

## Homebrew

```sh
brew install prassoai/tap/murmur
murmur version --client
```

## Nix (flakes)

The flake lives in this public repo, so it installs with zero private-repo
access:

```sh
# One-off run:
nix run github:prassoai/homebrew-tap#murmur -- version --client

# Install into your profile:
nix profile install github:prassoai/homebrew-tap#murmur
```

The CLI is proprietary, so the package is marked `unfree`; opt in when invoking:

```sh
export NIXPKGS_ALLOW_UNFREE=1
nix run --impure github:prassoai/homebrew-tap#murmur -- version --client
```

Supported systems: `x86_64-linux`, `aarch64-linux`, `x86_64-darwin`,
`aarch64-darwin`. The binaries are statically linked (`CGO_ENABLED=0`); the
flake also runs `autoPatchelfHook` on Linux so older dynamically-linked assets
still launch on a bare NixOS host.

## How it stays current

Both surfaces are generated automatically. When a stable `murmur` release is
cut, `prassoai/murmuration`'s release workflow sends a single `update-formula`
`repository_dispatch` carrying the release tag and per-platform `sha256`.
`.github/workflows/update-formula.yaml` renders **both** `Formula/murmur.rb`
**and** `nix/release.lock.json` from that one payload and commits them together,
so Homebrew and Nix always point at the same release. Don't edit
`Formula/*.rb` or `nix/release.lock.json` by hand — they are overwritten on the
next release.

The design rationale lives in
[`docs/proposals/DESIGN_NIX_PACKAGING.md`](https://github.com/prassoai/murmuration/blob/main/docs/proposals/DESIGN_NIX_PACKAGING.md)
in the murmuration repo.
