#!/bin/bash

wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh

which heroku

# Login in at command line with the same user/pass as heroku.com
heroku login

# Setup SSH keys for talking to heroku. Just hit enter twice ("empty for no passphrase").
ssh-keygen -t rsa

# Tell heroku about the new keys
heroku keys:add

