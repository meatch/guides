# Raspberry Pi As TV Media Player Setup

2017.06.18

My little Raspberry Pi Project - set up as Media Player for my TV. This includes integrating into my Mac network environment.

## TOC
1. [Set Locale](#set-lacale)
2. [Connect Wi-Fi](#connect-wi-fi)
3. [Add Bluetooth Periphs](#bluetooth-periphs)
4. [Enable SSH](#enable-ssh)
5. [Mac Screen Sharing](#mac-screen-sharing)
6. [Chromeos for Netflix] (#chromeos-for-netflix)


## Set Locale

This will make sure the time is right, and your keyboard is mapped properly.

1. RPI Icon > Preferences > Rasp. Pi Config
2. Localisation tab
3. Change all to US, Pacific

### Set time
Sunday, Jun 18, 2017 4:41:49 PM

    nano /home/pi/.config/lxpanel/LXDE-pi/panels/panel
    ClockFmt=%a, %b %e, %Y  %l:%M:%S %p
    reboot

## Connect Wi-fi

[Source](https://www.element14.com/community/community/raspberry-pi/raspberrypi_projects/blog/2016/03/11/a-more-powerful-plex-media-server-using-raspberry-pi-3)

Firstly we need to find out the name of our router, the SSID.
In a terminal type

    sudo iwlist wlan0 scan  

Look for the name of your router. It should look something like this, replace MY_ROUTER with the name of your router.

    ESSID:"MY_ROUTER"  

Next look through the text for your router and see if you can spot a line similar to this.

    IE: IEEE 802.11i/WPA2 Version 1  

So now we need to add our network details to a file called wpa-supplicant, in the terminal type.

    sudo nano /etc/wpa_supplicant/wpa_supplicant.conf  

In the text editor, navigate to the bottom of the text and add the following. Obviously change the ssid and psk to match the name of your router and the password you use to get online.

    network={  
      ssid="MY_ROUTER"  
      psk="THE PASSWORD YOUUSE TO CONNECT TO THE ROUTER"  
    }  

Save your work by pressing CTRL + O then press Enter. Next Press CTRL + X to exit the editor.

The changes should be automatic, but it is prudent to make sure by typing the next two lines one after another.

    sudo ifdown wlan0  
    sudo ifup wlan0  

You can check your IP address by typing

    ifconfig wlan0  

Your IP address should pop up for the interface wlan0, which is our WIFI card.
The best test to check that this works is to reboot your Raspberry Pi and see if it auto connects to the WIFI. To reboot type.

    sudo reboot  

## Bluetooth Periphs
Set Up Bluetooth Mac Keyboard and Trackpad

The following semi worked. At the end of the day, I just used the Bluetooth GUI to add devices.

* [Pairing Apple Keyboard and Mouse Bluetooth](http://www.adeepbite.com/apple-bluetooth-wireless-keyboard-trackpad-raspberry-pi/)
* [Updated Protocol](https://www.raspberrypi.org/forums/viewtopic.php?f=28&t=133961)
* [RPi 3 - Apple Magic Keyboard
](https://www.raspberrypi.org/forums/viewtopic.php?f=28&t=138578)



## Enable SSH
[Enable SSH Documentation](https://www.raspberrypi.org/documentation/remote-access/ssh/)

### Get RPI IP Address
    hostname -I
    ifconfig //for more details


1. Enter <b>sudo raspi-config</b> in a terminal window
2. Select <b>Interfacing Options</b>
3. Navigate to and select <b>SSH</b>
4. Choose <b>Yes</b>
5. Select <b>Ok</b>
6. Choose <b>Finish</b>

### [Remove Older SSH Access](https://www.godaddy.com/help/ssh-login-warning-remote-host-identification-has-changed-12161)
Had to do this last time I clean installed pi. So my Mac would forget the older connection.


## Mac Screen Sharing
Set Up Screen Sharing for Mac Access
[Follow Steps Here](https://stackoverflow.com/questions/32361132/screen-sharing-between-raspberry-pi-and-mac-osx)

You need to create the following, otherwise it won't let you write out. ~/.config/autostart/x11vnc.desktop
    cd ~/.config/
    mkdir autostart
    nano x11vnc.desktop


## Prevent From Sleeping
[Try This Out](https://www.bitpi.co/2015/02/14/prevent-raspberry-pi-from-sleeping/)

## Netflix
[Video Says it all](https://www.youtube.com/watch?v=gAL3v5uNH2E)
Out of the box. Chromium does not come with a certain plugin for playing Netflix

    wget https://github.com/kusti8/chromium-build/releases/download/netflix-1.0.0/chromium-browser_56.0.2924.84-0ubuntu0.14.04.1.1011.deb

    sudo dpkg -i chromium-browser_56.0.2924.84-0ubuntu0.14.04.1.1011.deb

    reboot








