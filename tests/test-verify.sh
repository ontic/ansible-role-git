#!/bin/bash

# Verify the installed version of Git.
docker exec --tty ${container_id} env TERM=xterm git --version

# Verify the user account Git configuration.
docker exec --tty ${container_id} env TERM=xterm cat /home/adam/.gitconfig