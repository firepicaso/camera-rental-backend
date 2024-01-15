# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Clear existing data to prevent duplicates
# CameraImage.destroy_all
Camera.destroy_all

# Method to create camera records with associated images
def create_camera_with_images(name, daily_price, camera_type, weekly_price, two_week_price, three_week_price, four_week_price, description)
  camera = Camera.create(
    name: name,
    daily_price: daily_price,
    camera_type: camera_type,
    weekly_price: weekly_price,
    two_week_price: two_week_price,
    three_week_price: three_week_price,
    four_week_price: four_week_price,
    description: description,
    booked: false
  )

end


# Camera 1
create_camera_with_images(
  "CANON XF705",
  125.00,
  "1.0-Type CMOS sensor and DIGIC processor for vivid 4K UHD 50P visuals",
  413.00,
  662.00,
  823.00,
  950.00,
  "Meet the Canon XF705, a superb camcorder perfect for capturing professional UHD HDR content...",
  images: [
     'https://dhdqwix5dbmzs.cloudfront.net/products/HAC00-05590/images/large/24-xf705-hire-uk.png',
   'https://dhdqwix5dbmzs.cloudfront.net/products/HAC00-05590/images/large/22-xf705-hire-uk.png',
   'https://dhdqwix5dbmzs.cloudfront.net/products/HAC00-05590/images/large/23-xf705-hire-uk.png',
   'https://dhdqwix5dbmzs.cloudfront.net/products/HAC00-05590/images/large/24-xf705-hire-uk.png',
   'https://dhdqwix5dbmzs.cloudfront.net/products/HAC00-05590/images/large/25-xf705-hire-uk.png',
   'https://dhdqwix5dbmzs.cloudfront.net/products/HAC00-05590/images/large/27-xf705-hire-uk.png',
  ]
)

# Camera 2
create_camera_with_images(
  "CANON XF605",
  125.00,
  "1.0-Type CMOS sensor and DIGIC processor for vivid 4K UHD 50P visuals",
  413.00,
  662.00,
  823.00,
  950.00,
  "The Canon XF605 camcorder is not just another video camera, it's an instrument of storytelling...",
  [
     'https://dhdqwix5dbmzs.cloudfront.net/products/HAC00-07636/images/large/XF-605.png',
  'https://dhdqwix5dbmzs.cloudfront.net/products/HAC00-07636/images/large/XF-605-rent.png',
  'https://dhdqwix5dbmzs.cloudfront.net/products/HAC00-07636/images/large/Canon-XF605-rent.png',
  'https://dhdqwix5dbmzs.cloudfront.net/products/HAC00-07636/images/large/XF605.png',
  'https://dhdqwix5dbmzs.cloudfront.net/products/HAC00-07636/images/large/Rent-XF605.png',
  'https://dhdqwix5dbmzs.cloudfront.net/products/HAC00-07636/images/large/XF605-hire.png',
  ]
)

# Camera 3
create_camera_with_images(
  "CANON XA75",
  100.00,
  "1.0-inch Type CMOS 4K pro camcorder. With Dual Pixel CMOS AF, 15x optical zoom plus 5-axis stabilisation, 3G-SDI, HDMI out and UVC",
  330.00,
  529.00,
  658.00,
  760.00,
  "Shoot high quality 4K UHD video with the compact XA75. As well as outstanding Over Sampling HD processing...",
  [
     'https://dhdqwix5dbmzs.cloudfront.net/products/HAC00-08535/images/large/1662540395_1725874.png',
  'https://dhdqwix5dbmzs.cloudfront.net/products/HAC00-08535/images/large/1662540403_IMG_1831963.png',
  'https://dhdqwix5dbmzs.cloudfront.net/products/HAC00-08535/images/large/1662540403_IMG_1831964.png',
  'https://dhdqwix5dbmzs.cloudfront.net/products/HAC00-08535/images/large/1662540403_IMG_1831966.png',
  'https://dhdqwix5dbmzs.cloudfront.net/products/HAC00-08535/images/large/1662540403_IMG_1831967.png',
  ]
)

# Camera 4
create_camera_with_images(
  "CANON XF305",
  95.00,
  "Full HD at 1920 x 1080 resolution is captured via three 1/3 type 2.07 megapixel Full HD CMOS sensors – designed and manufactured by Canon in-house",
  314.00,
  503.00,
  626.00,
  722.00,
  "Capture high quality HD to CF cards. The XF305 records MPEG-2 MXF (Media eXchange Format) files...",
  [
    'https://dhdqwix5dbmzs.cloudfront.net/products/HAC00-00274/images/large/1large.png',
  'https://dhdqwix5dbmzs.cloudfront.net/products/HAC00-00274/images/large/2large.png',
  'https://dhdqwix5dbmzs.cloudfront.net/products/HAC00-00274/images/large/3large.png',
  'https://dhdqwix5dbmzs.cloudfront.net/products/HAC00-00274/images/large/4large.png',
  'https://dhdqwix5dbmzs.cloudfront.net/products/HAC00-00274/images/large/5large.png',
  'https://dhdqwix5dbmzs.cloudfront.net/products/HAC00-00274/images/large/6large.png',
  ]
)

# Camera 5
create_camera_with_images(
  "CANON XA70",
  90.00,
  "1.0-inch Type CMOS 4K pro camcorder. With Dual Pixel CMOS AF, 15x optical zoom plus 5-axis stabilisation, HDMI out and UVC, it’s a truly versatile workhorse.",
  227.00,
  477.00,
  593.00,
  684.00,
  "Shoot high quality 4K UHD video with the compact XA70. As well as outstanding over sampling HD processing...",
  [
    'https://dhdqwix5dbmzs.cloudfront.net/products/HAC00-08707/images/large/Hire-Canon-XA70.png',
  'https://dhdqwix5dbmzs.cloudfront.net/products/HAC00-08707/images/large/Rent-Canon-XA70.png',
  'https://dhdqwix5dbmzs.cloudfront.net/products/HAC00-08707/images/large/Canon-XA70-rental.png',
  ]
)

# Camera 6
create_camera_with_images(
  "CANON POWERSHOT G7 X III VLOGGING KIT",
  55.00,
  "Canon PowerShot G7 X Mark III",
  124.00,
  209.00,
  268.00,
  324.00,
  "The Canon PowerShot G7 X Mark III is a stellar choice when looking to hire a vlogging kit...",
  [
    'https://dhdqwix5dbmzs.cloudfront.net/products/HAC00-07449/images/large/G7X-III-vlogger.png',
  'https://dhdqwix5dbmzs.cloudfront.net/products/HAC00-07449/images/large/G7X3B05.png',
  'https://dhdqwix5dbmzs.cloudfront.net/products/HAC00-07449/images/large/G7X-III-hire.png',
  'https://dhdqwix5dbmzs.cloudfront.net/products/HAC00-07449/images/large/G7X2B01.png',
  'https://dhdqwix5dbmzs.cloudfront.net/products/HAC00-07449/images/large/G7X-III-rent.png',
  'https://dhdqwix5dbmzs.cloudfront.net/products/HAC00-07449/images/large/Canon-grip.png',

  ]
)

puts "Seed data created successfully!"
