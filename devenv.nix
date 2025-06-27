{
  pkgs,
  lib,
  config,
  inputs,
  ...
}: {
  packages = with pkgs; [
    git
    age
    glow
  ];

  enterShell = ''
    age --version
    glow --version
  '';

  tasks = {
    "decrypt:book".exec = "age -r ~/.ssh/id_dev aiengineering.pdf.age > aiengineering.pdf";
  };

  git-hooks.hooks.mdsh.enable = true;
}
