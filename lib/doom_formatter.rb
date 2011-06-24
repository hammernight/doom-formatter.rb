require 'rspec/core/formatters/base_formatter'

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

  def dump_summary duration, p2, p3, p4
    output.puts generate duration
  end 

  def generate duration=42
    "-w #{@count} -c #{duration}"
  end

end
