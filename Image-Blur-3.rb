

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
		distance
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

					#vertical 1's

					i = 1
					while i <= distance && (x-i) >= 0
						copy[x-i][y] = 1
						i+=1
					end

					i = 1
					while i <= distance && (x+i) <= @arry.length
						copy[x+i][y] = 1
						i+=1
					end


					#manhattan distance

					i = 1
                	while i <= distance
                        if (y+i) <= @arry[x].length
                            copy[x][y+i] = 1
                            j = (distance - i)
                            while j >= 0 && (x+j) <= @arry.length
                            	copy[x+j][y+i] = 1
                            	j -= 1
                            end
                            i += 1
                        end
                    end

                    i = 1
                    while i <= distance
                    	if (y-i) >= 0
                    		copy[x][y-i] = 1
                    		j = (distance - i)
                    		while j >= 0 && (x+j)< @arry.length
                    			copy[x+j][y-i] = 1
                    			j-=1
                    		end
                    		i+=1
                    	end
                    end

                    i = 1
                    while i <= distance
                    	if (y-i) >= 0
                    		copy[x][y-i] = 1
                    		j = (distance - i)
                    		while j>=0 && (x-j) >= 0
                    			copy[x-j][y-i] = 1
                    			j -= 1
                    		end
                    		i += 1
                    	end
                    end

                    i = 1
                    while i <= distance
                    	if (y+i) <= @arry[x].length
                    		copy[x][y+i] = 1
                    		j = (distance - i)
                    		while j>= 0 && (x-j) >= 0
                    			copy[x-j][y+i] = 1
                    			j -= 1
                    		end
                    		i += 1
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
  [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
])
#image.output_image

image.blur(5)
image.output_image