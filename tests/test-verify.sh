#!/bin/bash

# Verify the installed version of Git.
docker exec --tty ${container_id} env TERM=xterm git --version