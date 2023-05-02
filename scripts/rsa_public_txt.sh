#!/bin/bash

./cleanup.sh
./generateKeys.sh
cd ../playground/
touch base.txt;
echo "This is my base text file it contains the text that needs to be encrypted" > base.txt

# encrypting the file
openssl rsautl -encrypt -inkey varun_public.pem -pubin -in base.txt -out enc_base.enc

# decrypting the file
openssl rsautl -decrypt -inkey varun_private.pem -in enc_base.enc > dec_base.txt
