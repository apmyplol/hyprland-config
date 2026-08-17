#!/bin/sh

select server in $(sed -n "s/^Host \(.*\)/\1/p" ~/.ssh/config) ; do [[ $server ]] && kitty +kitten ssh $server ; break ; done
