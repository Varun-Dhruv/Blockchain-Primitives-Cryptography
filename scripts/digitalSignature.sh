#!/bin/bash
./generateKeys.sh

cd ../playground/

touch base.txt 

openssl dgst -sign varun_private.pem -keyform PEM -sha256 -out base.sign -binary base.txt

openssl dgst -verify varun_public.pem -keyform PEM -sha256 -signature base.sign -binary base.txt