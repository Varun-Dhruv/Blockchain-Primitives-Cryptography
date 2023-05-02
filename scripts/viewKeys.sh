#!/bin/bash

cd ../playground/

echo "Private Key"

openssl rsa -in varun_private.pem -noout -text

echo "Public Key"

openssl rsa -in varun_public.pem -pubin -noout -text

