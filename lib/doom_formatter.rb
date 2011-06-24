require 'rspec/core/formatters/base_text_formatter'

class DoomFormatter < RSpec::Core::Formatters::BaseFormatter

  def initialize output
    super output
    @count = 0
  end

  def example_passed(example)
    @count += 1
  end

  def example_failed(example)
    @count += 1
  end

  def example_pending(example)
    @count += 1
  end

  def dump_summary duration_time, p2, p3, p4
    super(duration_time, 0, 0, 0)
    output.puts generate
  end 

  def generate
    "-w #{@count} -c #{@duration}"
  end

end
