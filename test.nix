with import <nixpkgs> {
  overlays = [
    (import (builtins.fetchGit { url = "git@gitlab.intr:_ci/nixpkgs.git"; ref = "master"; }))
  ];
};

maketestPhp {
  php = php.php70;
  image = callPackage ./default.nix {};
  rootfs = ./rootfs;
}
