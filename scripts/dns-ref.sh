#!/usr/bin/env bash

curl -o /home/bzm/Public/system/host/github-hosts https://raw.githubusercontent.com/521xueweihan/GitHub520/main/hosts

cat /home/bzm/Public/system/host/* >/etc/hosts
