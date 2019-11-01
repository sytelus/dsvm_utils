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

sudo apt-get -y update
sudo apt-get -y install swig cmake libopenmpi-dev zlib1g-dev
#conda install -y x264=='1!152.20180717' ffmpeg=4.0.2 -c conda-forge
pip install -q stable-baselines[mpi] box2d box2d-kengz pyyaml pybullet optuna pytablewriter scikit-optimize

mkdir -p ~/GitHubSrc
pushd ~/GitHubSrc
function install_from_git {
	if [ ! -d "~/GitHubSrc/$1" ]; then
		git clone https://github.com/$1.git
		cd "$1"
		pip install -e .
		cd ..	
	fi
}

install_from_git microsoft/tensorwatch
install_from_git sytelus/podworld
install_from_git sytelus/regim
install_from_git hill-a/stable-baselines

popd

cp -f .bashrc ~/.bashrc
cp -f .bash_aliases ~/.bash_aliases
#echo "set background=dark" >> .vimrc
