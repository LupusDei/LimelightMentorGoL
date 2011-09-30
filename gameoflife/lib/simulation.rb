class Simulation
  attr_accessor :grid, :running_thread

  def initialize
    @grid = []
    10.times do
      @grid << []
    end
    10.times do |x|
      10.times do |y|
        @grid[x][y] = 0
      end
    end
    @dirty = []
  end

  def toggle_square x,y
    @grid[x][y] = (@grid[x][y] - 1).abs
    @dirty << "#{x}#{y}"
  end

  def dirty
    @dirty
  end

  def clean_all
    @dirty = []
  end

  def run
    @running_thread = Thread.new {
      Thread.current["run"] = true
      while Thread.current["run"] do
#this should change!
        sleep 0.2
        x = (rand * 10).to_i 
        y = (rand * 10).to_i 
        toggle_square(x,y)
      end
    }
  end

  def halt
    @running_thread["run"] = false
  end
end
