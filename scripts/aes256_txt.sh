#!/bin/bash
cd ../playground
if test -f "base.txt";
then
rm base.txt
fi

if test -f "enc_base.enc";
then
rm enc_base.enc
fi

if test -f "dec_base.txt";
then 
rm dec_base.txt
fi

touch base.txt;
echo "This is my base text file it contains the text that needs to be encrypted" > base.txt
openssl enc -aes-256-cbc -a -salt -pbkdf2 -in base.txt -out enc_base.enc
openssl enc -aes-256-cbc -d -a -pbkdf2 -in enc_base.enc -out dec_base.txt

