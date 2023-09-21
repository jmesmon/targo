{
  inputs = {
    flake-utils.url = "github:numtide/flake-utils";
    nixpkgs.url = "nixpkgs";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs {
          inherit system;
        };
      in
      {
        packages.default = with pkgs; (callPackage ./targo.nix {
          inherit rustPlatform;
        });
        formatter = pkgs.nixpkgs-fmt;
      }

    );
}
