#!/bin/sh

GALAXY_DIR=./galaxy

REG_USER="$1"
REG_PASS="$2"
RHSM_USER="$3"
RHSM_PASS="$4"

if [ ! -d $GALAXY_DIR ]; then
    mkdir $GALAXY_DIR 
fi

# Install/update casl requirements
ansible-galaxy install -r casl-requirements.yml -p $GALAXY_DIR

# Set our env
export OREG_AUTH_USER=$REG_USER
export OREG_AUTH_PASSWORD=$REG_PASS
export RHSM_USER=$RHSM_USER
export RHSM_PASSWD=$RHSM_PASS

# RELEASE THE KRAKEN!!!
ansible-playbook \
    -f 20 \
    -i ./inventory/a935.example.opentlc.com/inventory/hosts \
    ./playbooks/release-the-kraken.yml
