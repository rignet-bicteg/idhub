{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShellNoCC {
  buildInputs = with pkgs; [
    # --pure
    git
    less
    watch
    rsync
  ];

  shellHook = ''
    alias sync='watch rsync -zr --delete ./src/* ./zod/idhub'
  '';
}
