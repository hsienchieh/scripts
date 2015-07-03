#!/bin/bash

# add vM_USER
#     VM_HOST
#     VM_FOLDER
#     in bashrc  
#     export those variable

sudo mount -t cifs -o username=$VM_USER,rw //$VM_HOST/$VM_FOLDER ./host
