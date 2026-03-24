{
  description = "Quarto blog dev environment";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
      in {
        devShells.default = pkgs.mkShell {
          packages = [
            pkgs.quarto
            pkgs.git
          ];

          shellHook = ''
            echo "Quarto $(quarto --version) ready"
            echo "  quarto preview   → live dev server"
            echo "  quarto render    → build to _site/"
          '';
        };
      });
}
