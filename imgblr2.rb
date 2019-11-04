class Image

  def initialize(picture)
    @pic = picture
    @rmax = @pic.length-1
    @cmax = @pic[0].length-1
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


  rmax = @pic.length-1
  cmax = @pic[0].length-1
    locs.each do |r, c|
      @pic [r-1] [c] = 1 if r > 0    #change value above
      @pic [r+1] [c] = 1 if r < rmaxindex    #change value below
      @pic [r] [c-1] = 1 if c > 0   #change value to left
      @pic [r] [c+1] = 1 if c < cmaxindex   #change value to right
    end

  private

    def find_locs
      locs = []
      @pic.each_with_index do |row, rowindex|
        row.each_with_index do |column, columnindex|
        if column == 1
          locs << [rowindex, columnindex]
        end
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
end