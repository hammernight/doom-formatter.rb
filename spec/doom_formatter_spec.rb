require 'spec_helper'

describe DoomFormatter do
 
  let (:output) { StringIO.new } 
  let (:formatter) { DoomFormatter.new output }

  it "should generate a the size of the maze based on the number of test" do
    formatter.generate(0, 30).should match(/-w 30/)
  end

  it "should generate the cell size based on the duration" do
    formatter.generate(10, 0).should match(/-c 10/)
  end

  it 'should output the generated theseus string' do
    mock_output = mock
    formatter = DoomFormatter.new mock_output
    mock_output.should_receive(:puts).with("-w 30 -c 10")
    formatter.dump_summary 10, 30, 0, 0
  end
 
end

