# run_setup.sh

bash delete.sh

echo '' >>~/.zshrc

cat aliases.txt >>~/.zshrc

brew install neovim

mkdir ~/.config
mkdir ~/.config/nvim

cp init.lua ~/.config/nvim

mkdir ~/.config/nvim/lua
mkdir ~/.config/nvim/lua/plugins

echo 'if true then return {} end' >> ~/.config/nvim/lua/plugins/example.lua

# Use iTerm because terminal sux
DIR='/Applications/iTerm.app'
if test -d "$DIR"; then
    echo "$DIR exists."
else
    curl --output out.zip https://iterm2.com/downloads/stable/iTerm2-3_5_5.zip
    unzip out.zip 
    mv  iTerm.app /Applications
    open  /Applications/iTerm.app
    rm out.zip
fi

