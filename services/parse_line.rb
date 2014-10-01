require 'pry'

class ParseLine
  attr_reader :input

  def self.call(line)
    new(line).parse
  end

  def initialize(line)
    @line = line
  end

  def parse
    delimiter = @line.match(DelimitedString::DELIMITERS).to_s
    keys = DelimitedString::KEYS[delimiter]
    parsed_input = @line.split(delimiter)
    Hash[keys.zip parsed_input]
  end

  def sort
    keys = DelimitedString::KEYS[delimiter]
    parsed_input = input.split(delimiter)
    Hash[keys.zip parsed_input]
  end

end
