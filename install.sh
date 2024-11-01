# run_setup.sh

bash delete.sh

echo '' >>~/.zshrc

cat aliases.txt >>~/.zshrc

brew install neovim

mkdir ~/.config
mkdir ~/.config/nvim

mv init.lua ~/.config/nvim

mkdir ~/.config/nvim/lua
mkdir ~/.config/nvim/lua/plugins

echo 'if true then return {} end' >> ~/.config/nvim/lua/plugins/example.lua
