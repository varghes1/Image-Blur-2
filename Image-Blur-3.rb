

class Image

	def initialize(entry)
		@arry = entry
	end


	def output_image
		@arry.each do |line|
			line.each do |cell|
			end
		puts line.join
		end
	end


	def blur(distance)
		copy = []
		@arry.each_index do |x|
			copy << []
			@arry[x].each_index do |y|
			 	copy[x] << @arry[x][y]
			end
		end

		#look at every pixel, 
		@arry.each_index do |x|
			@arry[x].each_index do |y|
				#for every pixel if it == 1
				if @arry[x][y] == 1
					#change the copy to make a diamond of '1's

					#if distance is not too big on x, then change to 1's


					distance.times do |i|


						#if y+1 is not too big
						if (y+i) < @arry[x].length
							copy[x][y+i] = 1
						end
						#if y-1 is not too small
						if (y-i) >= 0
							copy[x][y-i] = 1
						end
						#if x+1 is not too big

						if (x+i) < @arry.length
							#change (x+1),y to equal 1
							copy[x+i][y] = 1
						end
						#if x-1 is not too small
						if (x-i) >= 0
							copy[x-i][y] = 1
						end
					end
					
				end
			end
		end
		#swap @arry with copy
		@arry = copy
	end




end

image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 0],
  [0, 0, 0, 0]
])
#image.output_image

image.blur(2)
image.output_image