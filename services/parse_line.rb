require 'pry'

class ParseLine
  attr_reader :input

  def initialize(line)
    @line = line
  end

  def parse_and_create_hash
    delimiter = @line.match(DelimitedString::DELIMITERS).to_s
    keys = DelimitedString::KEYS[delimiter]
    parsed_input = @line.gsub(/\s+/, "").split(delimiter)
    Hash[keys.zip parsed_input]
  end
end
