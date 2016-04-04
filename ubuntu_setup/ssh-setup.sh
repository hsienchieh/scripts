#!/bin/bash

file=~/.ssh/id_rsa.pub
if [ ! $# = 1 ];
then
  	echo "ssh-setup user@host"
	echo $#
	exit 1
fi
if [ ! -f $file ];
then 
	echo "generate sshkey"
	echo ssh-keygen
fi

ssh-copy-id $1
