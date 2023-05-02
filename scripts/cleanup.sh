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

if test -f "varun_private.pem";
then    
rm varun_private.pem
fi

if test -f "varun_public.pem";
then 
rm varun_public.pem
fi
