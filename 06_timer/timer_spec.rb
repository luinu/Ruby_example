# # Topics
#
# * classes
# * instance variables
# * string formats
# * modular arithmetic
#
# # Timer

require 'timer'

describe "Timer" do
  before(:each) do
    @timer = Timer.new
  end

  it "should initialize to 0 seconds" do
    expect(@timer.seconds).to eq(0)
  end

  describe 'time_string' do
    it "should display 0 seconds as 00:00:00" do
      @timer.seconds = 0
      expect(@timer.time_string).to eq("00:00:00")
    end

    it "should display 12 seconds as 00:00:12" do
      @timer.seconds = 12
      expect(@timer.time_string).to eq("00:00:12")
    end

    it "should display 66 seconds as 00:01:06" do
      @timer.seconds = 66
      expect(@timer.time_string).to eq("00:01:06")
    end

    it "should display 4000 seconds as 01:06:40" do
      @timer.seconds = 4000
      expect(@timer.time_string).to eq("01:06:40")
    end
  end
end
