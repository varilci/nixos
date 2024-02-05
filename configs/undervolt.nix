{config, pkgs, lib, ...}:

{
  systemd.services.undervolt = {
    description = "Undervolt ALU parts.";
    after = [ "suspend.target"
              "hibernate.target"
              "hybrid-sleep.target"
    ];
    wantedBy = [ 
      "multi-user.target"
      "suspend.target"
      "hibernate.target"
      "hybrid-sleep.target"
    ];
    serviceConfig = {
      Type = "oneshot";
      ExecStart="/run/current-system/sw/bin/undervolt --core -75 --cache -75 --gpu -22";
    };
  };
}
