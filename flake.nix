{
  description = "murmur — CLI for the Murmur agent orchestration platform";

  # Only nixpkgs is needed: the package is a thin wrapper around the prebuilt
  # release binary (fetchurl + install), so it is independent of the nixpkgs
  # revision. The pin below just supplies stdenv / fetchurl / autoPatchelfHook.
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.11";

  outputs = { self, nixpkgs }:
    let
      # nix/release.lock.json is rendered by .github/workflows/update-formula.yaml
      # from the SAME repository_dispatch payload that renders Formula/murmur.rb,
      # so the flake and the Homebrew formula track each stable release in
      # lockstep. It pins the immutable release tag and the per-platform sha256
      # of each binary published on this repo's GitHub releases.
      lock = builtins.fromJSON (builtins.readFile ./nix/release.lock.json);

      # Systems we publish prebuilt binaries for. Keys MUST match the
      # "platforms" object in release.lock.json.
      systems = builtins.attrNames lock.platforms;

      forAllSystems = nixpkgs.lib.genAttrs systems;
      pkgsFor = system: nixpkgs.legacyPackages.${system};

      # murmurFor fetches the matching raw executable from this repo's release
      # for one Nix system and installs it verbatim (no unpack — the asset is a
      # single executable, not an archive).
      #
      # ELF interpreter: the release pipeline builds with CGO_ENABLED=0, so the
      # assets are statically linked and run on a bare NixOS host as-is. Older
      # published assets (e.g. the natively built linux/amd64 binary) are
      # dynamically linked against glibc and need their interpreter + rpath
      # rewritten to the Nix loader, so we run autoPatchelfHook on Linux. It is
      # a no-op on a static binary, so it stays correct for both old and new
      # releases. macOS Mach-O binaries link libSystem (present on every Mac),
      # so no patching is needed there.
      murmurFor = system:
        let
          pkgs = pkgsFor system;
          plat = lock.platforms.${system};
          isLinux = pkgs.stdenv.hostPlatform.isLinux;
        in
        pkgs.stdenv.mkDerivation {
          pname = "murmur";
          version = lock.version;

          src = pkgs.fetchurl {
            url = "https://github.com/${lock.repo}/releases/download/${lock.tag}/${plat.asset}";
            sha256 = plat.sha256;
          };

          dontUnpack = true;
          dontBuild = true;
          dontConfigure = true;
          # Go binaries ship unstripped; stripping can corrupt buildinfo.
          dontStrip = true;

          nativeBuildInputs = pkgs.lib.optionals isLinux [ pkgs.autoPatchelfHook ];
          buildInputs = pkgs.lib.optionals isLinux [ pkgs.stdenv.cc.cc.lib ];

          installPhase = ''
            runHook preInstall
            install -Dm755 "$src" "$out/bin/${lock.binary}"
            runHook postInstall
          '';

          meta = with pkgs.lib; {
            description = "CLI for the Murmur agent orchestration platform";
            homepage = "https://github.com/prassoai/murmuration";
            mainProgram = lock.binary;
            platforms = systems;
            sourceProvenance = [ sourceTypes.binaryNativeCode ];
            # The CLI is proprietary; consumers must opt in via allowUnfree
            # (e.g. NIXPKGS_ALLOW_UNFREE=1 nix run --impure ...). See README.md.
            license = licenses.unfree;
          };
        };
    in
    {
      # packages.<system>.murmur — the released CLI binary, pinned to lock.tag.
      # `nix run github:prassoai/homebrew-tap#murmur`
      # `nix profile install github:prassoai/homebrew-tap#murmur`
      packages = forAllSystems (system: rec {
        murmur = murmurFor system;
        default = murmur;
      });

      apps = forAllSystems (system: rec {
        murmur = {
          type = "app";
          program = "${self.packages.${system}.murmur}/bin/${lock.binary}";
        };
        default = murmur;
      });
    };
}
