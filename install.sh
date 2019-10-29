pip install --upgrade pip

pip install -q gym
pip install -q gym[box2d]
pip install -q gym[classic_control]
pip install -q gym[atari]

# for some reason we need two tries?
pip install -q gym
pip install -q gym[box2d]
pip install -q gym[classic_control]
pip install -q gym[atari]

pip install ray[rllib]

cp -f .bashrc ~/.bashrc
cp -f .bash_aliases ~/.bash_aliases
echo "set background=dark" >> .vimrc
