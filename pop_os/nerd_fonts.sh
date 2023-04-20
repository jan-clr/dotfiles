mkdir -p ~/.local/share/fonts
git clone --filter=blob:none --sparse git@github.com:ryanoasis/nerd-fonts ~/repos/nerd-fonts
cd ~/repos/nerd-fonts
git sparse-checkout add patched-fonts/JetBrainsMono
git sparse-checkout add patched-fonts/FiraCode
./install.sh JetBrainsMono
./install.sh FiraCode


