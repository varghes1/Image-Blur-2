

def image_blur(entry)
	@arry = entry
	@newarry = entry

	@arry.each_with_index do |row,x|
		@arry[x].each_with_index do |cell,y|
			cell = @arry[x][y]
			if cell == 1
				if x = 0 && y = 0
					@newarry[x][y+1] = 1
					@newarry[x+1][y] = 1
				end
				if x < @arry.length && y == 0
					@newarry[x-1][y] = 1
					@newarry[x+1][y] = 1
					@newarry[x][y+1] = 1
				end
			end
		end
		puts @newarry[x].join
	end
end



image = ([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [1, 0, 0, 1],
  [0, 0, 0, 0]
])

image_blur(image)
