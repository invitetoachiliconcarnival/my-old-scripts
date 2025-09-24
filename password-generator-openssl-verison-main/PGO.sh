#!/bin/bash

read -p "Enter the password length: " PASS_LENGTH
for VAR in $(seq 1 10);
do
    openssl rand -base64 48 | cut -c1-$PASS_LENGTH
done
