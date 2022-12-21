#!/bin/bash

# i.e. sending _stratatech_mainsite
# will create DBs like adam_stratatech_mainsite
# for each dev in the DEVS array below
INPUTFILE="$1"
src="/home/adam/.ssh/${INPUTFILE}"

# All devs except Adam. Adam will be the source
DEVS=(andy benjamin cesar clark gaby)

for dev in "${DEVS[@]}"
  do
    sudo cp ${src} /home/${dev}/.ssh/
    sudo chmod 400 /home/${dev}/.ssh/${INPUTFILE}
    sudo chown ${dev}: /home/${dev}/.ssh/${INPUTFILE}
  done
