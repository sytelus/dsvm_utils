pip install --upgrade pip
pip install ray[rllib]
pip install -q gym[box2d]
pip install -q gym[classic_control]
pip install -q gym[atari]
cp -f .bashrc ~/.bashrc
cp -f .bash_aliases ~/.bash_aliases
echo "set background=dark" >> .vimrc
