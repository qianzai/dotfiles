#!/usr/bin/env bash
# Author: buzhengmiao
# vx: Qian_zai521
# Date: 2021-12-14 09:50
# Description: 远程连接交互

# rdesktop -f -u Administrator -p Bzm990521@tx 159.75.136.164

REMOTE_CONNECTION=/home/bzm/scripts/vnc_connection/remote_connection.txt
main() {
	echo "====远程连接地址===="
	cat -n $REMOTE_CONNECTION
	while true; do
		read -p "请输入要执行的操作编号:" NUM
		$(awk 'NR==2' $REMOTE_CONNECTION)
		break
	done
}
main
