

def image_blur(entry)
	@arry = entry
	@newarry = entry

	@arry.each_with_index do |row,x|
		@arry[x].each_with_index do |cell,y|
			if @arry[x][y] == 1
				@newarry[x-1][y] = 1
				#@newarry[x+1][y] = 1 unless x > (@arry.length-1)
				#@newarry[x][y+1] = 1 unless y > (@arry[x].length-1)
			end
		end
			puts @newarry[x].join
	end
end



image = ([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 0],
  [0, 0, 0, 0]
])

image_blur(image)