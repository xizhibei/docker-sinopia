#!/bin/bash

sinopia_cfg_file=/opt/sinopia/config.yaml

if [ ! -f ${sinopia_cfg_file} ]; then
  cp /etc/config.default.yaml ${sinopia_cfg_file}
fi

cat ${sinopia_cfg_file}

sinopia --config ${sinopia_cfg_file}