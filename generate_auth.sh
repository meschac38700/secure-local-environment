#!/bin/bash
read -p "Username: " user
read -s -p "Password: " pass

htpasswd_file=$PWD/secrets/.htpasswd
htpasswd -nbB "$user" "$pass" > "$htpasswd_file"

echo "traefik dashboard credentials generated successfully: $htpasswd_file"
