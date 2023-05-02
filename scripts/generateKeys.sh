#!/bin/bash

./cleanup.sh
 
cd ../playground/

openssl genrsa -aes128 -out varun_private.pem 1024

openssl rsa -in varun_private.pem -pubout > varun_public.pem

cd ../scripts &&  ./viewKeys.sh

cd ../playground/
