If you want to interact with NetworkManager from the command line you can use the "nmcli" command.

list all NM connections: `nmcli con`

start connection (wifi, vpn, etc): `nmcli con up id ConnectionName`

down connection: `nmcli con down id ConnectionName`

(more nmcli commands in the nmcli manpage).

Also note that regular users usually don't have permission to control networking. Using the commands above with sudo should work for most connections, but VPN specifically might fail with "Error: Connection activation failed: no valid VPN secrets."

If that happens to you, it's likely that the VPN password is stored in your user's gnome-keyring, which makes it inaccessible to the root user. This comment explains why.

To fix this, edit /etc/NetworkManager/system-connections/ConnectionName and under [vpn], change the password flags line to:

`password-flags=0`

If there is a line starting with Xauth password-flags, change it instead.

Then add the following below the [vpn] block:

```
[vpn-secrets]
password=YourPassword
```

(If in the previous step you changed the line Xauth password-flags, add Xauth password=... instead.)

Now restart network manager by:

```
sudo systemctl restart NetworkManager
```

Then starting the VPN connection with sudo nmcli con up id ConnectionName should work without problems.
