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

  def blur
    locs = []
    @pic.each_with_index do |row, rowindex|
      row.each_with_index do |column, columnindex|
        if column == 1
          locs << [rowindex, columnindex]
        end
      end
    end

  rmaxindex = @pic.length-1
  cmaxindex = @pic[0].length-1
    locs.each do |r, c|
      if r > 0
         @pic [r-1] [c] = 1    #change value above
      end
      if r < rmaxindex
          @pic [r+1] [c] = 1    #change value below
      end
      if c > 0
          @pic [r] [c-1] = 1    #change value to left
      end
      if c < cmaxindex
          @pic [r] [c+1] = 1    #change value to right
          #print "r= ",r,"  c=",c," \n"
      end
    end
  end
    
end

img = Image.new([

  [0,0,0,0],
  [0,1,0,0],
  [0,0,0,1],
  [0,0,0,0]

])

img.blur
img.output_image