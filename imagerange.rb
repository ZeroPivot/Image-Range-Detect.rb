
#Ruby v2.5.3
#gem install fastimage
require "fastimage"

# Note: assumes MIN_* < MAX_* 

#Constants#############
WIDTH=0
HEIGHT=1
################

DEBUG=true

#MIN_WIDTH < MAX_WIDTH
MAX_WIDTH=6000
MIN_WIDTH=2000

#MIN_HEIGHT < MAX_HEIGHT
MAX_HEIGHT=8000
MIN_HEIGHT=2000
#######################

def in_range?(file_location_or_uri)


	is_in_range = false
	width_range = MIN_WIDTH .. MAX_WIDTH
	height_range = MIN_HEIGHT .. MAX_HEIGHT 

	size_array = FastImage.size(file_location_or_uri)

	p size_array if DEBUG

	image_width  = size_array[WIDTH]
	image_height = size_array[HEIGHT]


	if (width_range.include?(image_width) && height_range.include?(image_height))
		is_in_range = true 
	end

	return is_in_range
end

# Testing out below...

puts in_range?("a.png") #=> https://i.imgur.com/odf07tq.png
