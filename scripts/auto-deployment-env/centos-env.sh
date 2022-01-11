#!/usr/bin/env bash
# Author: buzhengmiao
# vx: Qian_zai521
# Date: 2020/11/16 8:54
# Description:

init(){
current_dir=$(pwd)
echo "当前目录：$current_dir"
echo "==================="
}

end(){
echo "successful"
}

dependency_install() {
	#安装python3和pip3
	yum -y install \
		zlib-devel \
		bzip2-devel \
		openssl-devel \
		ncurses-devel \
		sqlite-devel \
		readline-devel \
		tk-devel \
		libffi-devel \
		wget \
		gcc \
		git \
		make

}

python3_install(){
	
	cd ./software/
	tar -zxvf Python-3.7.4.tgz
	cd Python-3.7.4 && ./configure prefix=/usr/local/python3
	make && make install
	ln -s /usr/local/python3/bin/python3.7 /usr/bin/python3
	ln -s /usr/local/python3/bin/pip3 /usr/bin/pip3
	pip3 install --upgrade pip

	python3 --version
	pip3 --version

	pip3 install --user neovim

	cd $current_dir
}


nodejs_install() {
	tar -Jxvf ./software/node-v14.15.0-linux-x64.tar.xz

	mv node-v14.15.0-linux-x64 /usr/local/node-v14.15.0
	ln -s /usr/local/node-v14.15.0/bin/npm /usr/local/bin/
	ln -s /usr/local/node-v14.15.0/bin/node /usr/local/bin/

	npm config set registry https://registry.npm.taobao.org

	npm install -g neovim
	cd $current_dir
}

neovim_install() {

	chmod +x ./software/nvim
	sudo chown root:root ./software/nvim
	sudo mv ./software/nvim /usr/bin

	cd ~
	git clone https://gitee.com/BuZM/config.git
	mv config .config

	cd $current_dir
}


lazygit_install() {
	cp ./software/lazygit /usr/local/bin/lazygit
	chmod u+x /usr/local/bin/lazygit
	cd $current_dir
}

fzf_install() {
	#fzf 安装
	cd ~
	git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
	~/.fzf/install
	ln ~/.fzf/bin/fzf /usr/local/bin/
	cd $current_dir
	
	# Installing ag on CentOS
	sudo yum install pcre-develxz-devel automake -y
	cd /usr/local/src
	sudo git clone https://github.com/ggreer/the_silver_searcher.git
	cd the_silver_searcher
	sudo ./build.sh
	sudo make install
	which ag
	cd $current_dir
}



main(){
	# dependency_install
	# python3_install
	# nodejs_install
	# neovim_install
	# lazygit_install
fzf_install
}
init
main
end



