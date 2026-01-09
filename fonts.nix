{config, pkgs, ...}:

{
fonts.packages = with pkgs; [
	font-awesome
];

fonts.enableDefaultPackages = true;
}
