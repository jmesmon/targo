{ rustPlatform
}:
rustPlatform.buildRustPackage {
  pname = "targo";
  version = "0.1.0";
  src = ./.;
  cargoHash = "sha256-wkIIxjVkT+QY1oQRoGrMm6PvZlQkod0zWuU7ncATOdA=";
}
