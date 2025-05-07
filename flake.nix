{
  description = "displays scraped curriculum from webuntis in your terminal";

  inputs = {
    flake-parts.url = "github:hercules-ci/flake-parts";
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = inputs@{ flake-parts, ... }:
    flake-parts.lib.mkFlake { inherit inputs; } {
      systems =
        [ "x86_64-linux" "aarch64-linux" "aarch64-darwin" "x86_64-darwin" ];
      perSystem = { pkgs, ... }: {
        packages.default = pkgs.buildGoModule {
          name = "tuntis";
          version = "0.0.1";
          src = ./.;
          vendorHash = null;
        };
        devShells.default =
          pkgs.mkShell { packages = with pkgs; [ go gopls ]; };
      };
    };
}
