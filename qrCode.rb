require 'rqrcode'
require 'RMagick'
include Magick

puts "Before you begin, make sure the picture of the logo is in the same directory as the script." 
puts "Now enter the link for the QR code (please put it in the format 'polleverywhere.com' rather than 'https://www.polleverywhere.com/'): "
link = gets.chomp
puts "Enter the file name of the logo (make sure it's in png or jpg!): "
fileName = gets.chomp

qrcode = RQRCode::QRCode.new(link)

# NOTE: showing with default options specified explicitly
png = qrcode.as_png(
  bit_depth: 1,
  border_modules: 4,
  color_mode: ChunkyPNG::COLOR_GRAYSCALE,
  color: 'black',
  file: nil,
  fill: 'white',
  module_px_size: 6,
  resize_exactly_to: false,
  resize_gte_to: false,
  size: 900
)

png.save('filename.png')
qrImage = Image.read('filename.png')[0]
logoImage = Image.read(fileName)[0].resize_to_fit(250, 250)
finalImage = qrImage.composite(logoImage, CenterGravity, OverCompositeOp)
finalImage.write('qrCode.png')