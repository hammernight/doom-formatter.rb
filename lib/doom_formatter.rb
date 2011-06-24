require 'rspec/core/formatters/base_formatter'

class DoomFormatter < RSpec::Core::Formatters::BaseFormatter

  def initialize output
    super output
  end

  def dump_summary duration, passing, pending, failed
    maze_params = generate duration, passing + pending + failed
    output.puts maze_params
    `theseus #{maze_params} > out.txt`
  end 

  def generate duration, examples
    "-w #{examples} -c #{duration.ceil}"
  end

end
