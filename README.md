# QRcode
This is a Ruby script to embed a logo within a QR code. In order to run this script, please make sure you have installed the libraries RQRCode (https://github.com/whomwah/rqrcode), ImageMagick (https://imagemagick.org/script/download.php) and RMagick (https://rubygems.org/gems/rmagick/versions/2.15.4). 

To run this Ruby script, download the folder. Place whichever logo you wish to embed (in .png or .jpg format!) within the folder. In your Terminal, change the directory to the folder and run 
```
> ruby qrCode.rb
```
You will be prompted for the link that the QR code is linked to and you will be asked to type the name of the picture. Please make sure the link given does not have "https://" or "http://" in front of it.

After you do these things, the final result will be given as "qrCode.png". Simply check your folder and it should be here. Have fun!
