require 'spec_helper'

describe DoomFormatter do
  
  let (:formatter) { DoomFormatter.new }

  it "should generate a the size of the maze based on the number of test" do
    10.times do
      formatter.example_failed(nil)
      formatter.example_pending(nil)
      formatter.example_passed(nil)
    end
    formatter.generate.should match(/-w 30/)
  end

  it "should generate the cell size based on the duration" do
    formatter.dump_summary 10, 0, 0, 0
    formatter.generate.should match(/-c 10/)
  end
end

