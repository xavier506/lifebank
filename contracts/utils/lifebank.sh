#!/usr/bin/env bash

LIFEBANK_ACCOUNT = 'bancoprueba1'
DONOR_ACCOUNT = 'donorprueba1'
SPONSOR_ACCOUNT = 'sponsorprueba1'

echo 'Unlock wallet' 

cleos wallet unlock --password $(cat /pass.txt)

echo 'Clear Tables' 

# cleos -u https://jungle.eosio.cr push action consent2life clear '' -p lifebankcode@active
# cleos -u https://jungle.eosio.cr push action lifebankcode clear '' -p lifebankcode@active
# cleos -u https://jungle.eosio.cr push action lifebankcoin clear '' -p lifebankcode@active

echo 'account consents' 
# Consent2Life

cleos push action consent2life \
 '{ 
   "account": "'$LIFEBANK_ACCOUNT'"
   "contract": "lifebankcode"
 }'

# Lifebank consent
 
# Donor consent

# Sponsor Consent 



# LifeBank Code

# Create Community 

# Add Lifebank 

# Register Donor 

# Issue Token 

# Transfer to Spnsor 

# Transfer To lifebank
 
