# Install Rust alts
pacman -S exa bat

# Install Starship Prompt and .bashrc
pacman -S ttf-nerd-fonts-symbols ttf-nerd-fonts-symbols-mono
sh -c "$(curl -fsSL https://starship.rs/install.sh)"
mv bashrc ~/.bashrc

# Install Emacs
sudo pacman -S ttf-fira-code emacs
mkdir ../.emacs.d
mv init.el ../.emacs.d/init.el

# Install Terminal
sudo pacman -S alacritty
echo "background_opacity: 0.95" >> ~/.config/alacritty.yml

# Configure i3 and it's bar
mv i3config ../.i3/config
mv i3status ../.config/i3status/config

# Install Other Useful Software (some is necessary for the previous configs)
#yay -S brave spotify zoom fluent-reader
pacman -S deepin-screenshot mpv youtube-dl rofi transmission-gtk croc code blender

cd
git clone https://github.com/palkiakerr/wallpapers
