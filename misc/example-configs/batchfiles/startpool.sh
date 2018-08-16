#!/bin/bash

#ellamain:
screen -dmS geth /path/to/geth --rpc --ws --unlock="./etcuser" --password="./etcpass" --max-peers=500 --extra-data="open-classic-pool" --identity="open-classic-pool" --cache=128

sleep 5

#pool2b:
screen -dmS etscpool2b /var/www/open-classic-pool/open-ethereum-pool /var/www/open-classic-pool/pool2b.json

sleep 5

#pool4b:
screen -dmS etscpool4b /var/www/open-classic-pool/open-ethereum-pool /var/www/open-classic-pool/pool4b.json

sleep 5

#pool9b:
screen -dmS etscpool9b /var/www/open-classic-pool/open-ethereum-pool /var/www/open-classic-pool/pool9b.json

sleep 5

#api:
screen -dmS etscapi /var/www/open-classic-pool/open-ethereum-pool /var/www/open-classic-pool/api.json

sleep 5

#unlocker:
screen -dmS etscunlocker /var/www/open-classic-pool/open-ethereum-pool /var/www/open-classic-pool/unlocker.json

sleep 5

#payout:
screen -dmS etscpayout /var/www/open-classic-pool/open-ethereum-pool /var/www/open-classic-pool/payout.json

sleep 5

exit 0
