class Timer
  attr_accessor :seconds
  def initialize
    @seconds = 0
  end
  def seconds
    @seconds
  end
  def time_string
    time_format(@seconds)
  end
  def time_format(total_seconds)
    hours = (total_seconds / 3600) <= 9 ? "0"+(total_seconds / 3600).to_s : (total_seconds / 3600).to_s
    minutes = (total_seconds / 60) % 60 <= 9 ? "0"+((total_seconds / 60) % 60).to_s : ((total_seconds / 60) % 60).to_s
    seconds = total_seconds % 60 <= 9 ? "0" + (total_seconds % 60).to_s : (total_seconds % 60).to_s
    "#{hours}:#{minutes}:#{seconds}"
  end
end
