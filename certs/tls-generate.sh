#!/bin/bash

openssl req -x509 -out local.docs.crt -keyout local.docs.key \
  -newkey rsa:2048 -nodes -sha256 \
  -subj '/CN=local.docs' -extensions EXT -config <( \
   printf "[dn]\nCN=local.docs\n[req]\ndistinguished_name = dn\n[EXT]\nsubjectAltName=DNS:local.docs\nkeyUsage=digitalSignature\nextendedKeyUsage=serverAuth")