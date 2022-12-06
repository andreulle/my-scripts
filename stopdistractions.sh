#!/bin/bash

social_media=(
	linkedin.com
	www.linkedin.com
	api.linkedin.com
	twitter.com
	www.twitter.com
	api.twitter.com
	facebook.com
	www.facebook.com
	api.facebook.com
)

if [[ $1 == "block" ]]; then
	for i in "${social_media[@]}"; do
		sed -i  "" "/^127.0.0.1 $i/d" /private/etc/hosts
		echo "127.0.0.1 $i" >>  /private/etc/hosts
	done
	
	killall Firefox
        pkill "Google Chrome"
        pkill "Safari"
fi

if [[ $1 == "unblock" ]]; then
        for i in "${social_media[@]}"; do
                sed -i "" "/^127.0.0.1 $i/d" /private/etc/hosts
        done
fi

