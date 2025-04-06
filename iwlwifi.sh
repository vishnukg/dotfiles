#!/bin/bash

case "$1" in
  pre)
    /usr/sbin/modprobe -r iwlmvm iwlwifi
    ;;
  post)
    /usr/sbin/modprobe iwlwifi iwlmvm
    ;;
esac
