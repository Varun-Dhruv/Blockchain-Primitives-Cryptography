#!/bin/bash

cd ../playground/

if test -f "base.png";
then 
rm base.png
fi

if test -f "enc_base.enc";
then 
rm enc_base.enc
fi

if test -f "dec_base.png";
then 
rm dec_base.png
fi

cp ../docs/images/base.png ../playground/
openssl enc -aes-256-cbc  -p -in base.png -out enc_base.enc

openssl enc -aes-256-cbc  -d -A -in enc_base.enc -out dec_base.png -p

