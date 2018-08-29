#!/bin/bash
rm -rf  ~/.ssh/{id_rsa  id_rsa.pub  known_hosts}
ssh-keygen -t RSA  -N '' -f ~/.ssh/id_rsa
