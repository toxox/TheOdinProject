class Timer

  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    hour = @seconds / 3600
    minute = (@seconds % 3600) /60
    second = (@seconds % 3600) % 60
    "%02d:%02d:%02d" % [hour, minute, second]
  end
  
end