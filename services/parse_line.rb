require 'pry'

class ParseLine
  attr_reader :input

  def self.call(line)
    new(line).parse_and_create_hash
  end

  def initialize(line)
    @line = line
  end

  def parse_and_create_hash
    delimiter = @line.match(DelimitedString::DELIMITERS).to_s
    keys = DelimitedString::KEYS[delimiter]
    parsed_input = @line.chomp.split(delimiter)
    binding.pry
    Hash[keys.zip parsed_input]
  end
end
