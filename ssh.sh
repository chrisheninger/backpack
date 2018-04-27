#!/bin/bash
ssh-keygen -t rsa -C "chris@igravitystudios.com"
ssh-add ~/.ssh/id_rsa
pbcopy < ~/.ssh/id_rsa.pub
echo "Copied to clipboard."

