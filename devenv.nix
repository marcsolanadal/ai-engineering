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
    typos
  ];

  enterShell = ''
    age --version
    glow --version
  '';

  tasks = {
    "decrypt:book".exec = "cd resources && age -d -i ~/.ssh/id_dev aiengineering.pdf.age > aiengineering.pdf";
  };

  git-hooks.hooks = {
    mdsh.enable = true;
    typos.enable = true;
  };
}
