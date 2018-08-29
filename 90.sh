#!/bin/bash
sed '/^SELINUX/s/=.*/=disabled/'  /etc/selinux/config
