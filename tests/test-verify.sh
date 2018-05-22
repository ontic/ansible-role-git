#!/bin/bash
# Copyright (c) Ontic. (http://www.ontic.com.au). All rights reserved.
# See the COPYING file bundled with this package for license details.

# Verify the installed location.
docker exec --tty ${container_id} env TERM=xterm which git
# Verify the installed version.
docker exec --tty ${container_id} env TERM=xterm git --version
# Verify the user account Git configuration.
docker exec --tty ${container_id} env TERM=xterm cat /home/adam/.gitconfig