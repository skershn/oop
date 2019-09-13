#row1 = [0,0,0,0]
#row2 = [0,1,0,0]
#array = [row1, row2]



#image = Image.new([
#  [0, 0, 0, 0],
#  [0, 1, 0, 0],
#  [0, 0, 0, 1],
#  [0, 0, 0, 0]
#])
#image.output_image

class Image

  def initialize(picture)
    @pic = picture
    @pic.inspect
  end

  def output_image
    @pic.each do |x|
      puts x.join
    end
  end

end

img = Image.new([

  [0,0,0,0],
  [0,1,0,0],
  [0,0,0,1],
  [0,0,0,0]

])

img.output_image