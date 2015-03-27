source colors.sh

if [ -f "$HOME/.gitconfig" ]; then
    msg_update ".gitconfig"
    rm ~/.gitconfig
else
    msg_install ".gitconfig"
fi

sudo ln -s $DOTFILES/git/.gitconfig ~/.gitconfig
msg_checking ".gitconfig"

read -p "Your name: " name
git config --global user.name "$name"
msg_checking "Update username successful"

read -p "Your email: " email
git config --global user.email "$email"
msg_checking "Update email successful"