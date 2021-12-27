## Installation guide 
- [Installing Ubuntu Server on a Raspberry Pi](https://ubuntu.com/tutorials/how-to-install-ubuntu-on-your-raspberry-pi#1-overview)
- Easy to use ethernet cable while setting up the pi board 
- Connect to the external monitor with keyboard and connect the ethernet cable
- Power up the pi board
- At the first boot, it will show you the login screen where it looks like you have to insert the username and password for the ubuntu server but you have to wait until the tool called cloud-init will finish up. Once it is done then it will allow you to insert username and password just under the cloud-init's logs. 
- Change the password 
- Run the update and upgrade command: `sudo apt update` and `sudo apt upgrade`
- Reboot the ubuntu server
- Install: `sudo apt install net-tools`
- Add the wireless network for the pi board: `sudo nano /etc/netplan/50-cloud-init.yaml`
- **The indentation needs to be correct for the .yaml to work. Convert the 2 space into 4 spaces** There shouldn't be any tabs only spaces.
  ```
  wifis:
    wlan0:
      dhcp4: true
      optional: true
      access-points:
        "your wifi name":
          password: "your_wifi_password"
  ```
- Save the file and apply it with: `sudo netplan apply` and `sudo reboot`
- See the system in the pie board: `neofetch`

## System commands
- To reboot: `sudo reboot`
- Ping google to check the internet connection: `ping -c 6 google.com`
- Find the IP address of the pi: `hostname -I`
- Shutdown the pi board: `sudo shutdown h -now`

## Issue with host
- If you got the SSH remote host identification has changed issue while connecting to the Pi board with SSH then you have to removes all keys belonging to hostname from a known_hosts file. Error will looks like 
  ```
  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
  @    WARNING: REMOTE HOST IDENTIFICATION HAS CHANGED!     @
  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
  IT IS POSSIBLE THAT SOMEONE IS DOING SOMETHING NASTY!
  Someone could be eavesdropping on you right now (man-in-the-middle attack)!
  It is also possible that a host key has just been changed.
  The fingerprint for the RSA key sent by the remote host is
  6e:45:f9:a8:af:38:3d:a1:a5:c7:76:1d:02:f8:77:00.
  Please contact your system administrator.
  Add correct host key in /home/hostname /.ssh/known_hosts to get rid of this message.
  Offending RSA key in /var/lib/sss/pubconf/known_hosts:4
  RSA host key for pong has changed and you have requested strict checking.
  Host key verification failed.
  ```
- Solution is to run the command: `ssh-keygen -R [hostname]`

## Alias to add in the bashrc file
- Add these under the `.bashrc`
  ```
  # alias for the System functions
  alias piReboot='sudo reboot'
  alias piShutDown='sudo shutdown -h now'
  alias c='clear'
  alias piUpdate='sudo apt update; sudo apt upgrade'
  alias piSystem='neofetch'
  alias piIp='hostname -I'
  ```
- Run `source .bashrc`