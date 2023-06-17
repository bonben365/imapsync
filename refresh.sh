#!/bin/bash
cd /home/imapsync
client_idx="$(cat /home/imapsync/client_id.txt)"
client_secretx="$(cat /home/imapsync/client_secret.txt)"
rf_token="$(cat /home/imapsync/refresh_token.txt)"
wget https://raw.githubusercontent.com/bonben365/imapsync/main/imapsync-refresh.py

sudo sed -i "s/client_id/$client_idx/g" /home/imapsync/imapsync-refresh.py
sudo sed -i "s/client_secret/$client_secretx/g" /home/imapsync/imapsync-refresh.py
sudo sed -i "s/rf_token/$rf_token/g" /home/imapsync/imapsync-refresh.py