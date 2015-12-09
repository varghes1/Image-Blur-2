

def image_blur(entry)
	@arry = entry
	@arry = @newarry

	@arry.each_index do |x|
		@arry[x].each_index do |y|
			if @arry[x][y] == 1
				@newarry[x][y] = 2
			else @newarry[x][y] = 0
			end
		end
	end

	puts @newarry
end



image = ([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
])

image_blur(image)
