require 'rspec/core/formatters/base_text_formatter'

class DoomFormatter < RSpec::Core::Formatters::BaseTextFormatter

  def initialize
    super nil
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

  def generate
    "-w #{@count} -c #{@duration}"
  end

end
