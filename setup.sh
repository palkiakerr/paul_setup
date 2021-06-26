rm ../.profile ../.bash_profile

pacman -S ttf-nerd-fonts-symbols ttf-nerd-fonts-symbols-mono ttf-fira-code --noconfirm

pacman -S exa bat --noconfirm

pacman -S alacritty --noconfirm
sh -c "$(curl -fsSL https://starship.rs/install.sh)"

pacman -S emacs deepin-screenshot mpv youtube-dl rofi transmission-gtk croc code blender neovim zathura zathura-pdf-mupdf
su - $1 -c "yay -S brave spotify zoom fluent-reader --noconfirm"

su - $1 -c "yay -S zotero --noconfirm"

pacman -S syncthing
su - $1 -c "yay -S syncthingtray --noconfirm"
su - $1 -c "systemctl --user enable syncthing.service"
mkdir ../.config/syncthing
#mv ./syncthing/* ../.config/syncthing
echo "syncthingtray" >> ../.bash_profile

mkdir ../.emacs.d
mv init.el ../.emacs.d/init.el

echo "background_opacity: 0.95" >> ~/.config/alacritty.yml

mv i3config ../.i3/config
mkdir ../.config/i3status
mv i3status ../.config/i3status/config
mv bashrc ../.bashrc
mv starship.toml ../.config/starship.toml

echo '/usr/bin/setxkbmap -option "ctrl:nocaps"' >> ../.bash_profile

cd
git clone https://github.com/palkiakerr/wallpapers
