require 'pry'

class ParseLine
  attr_reader :input

  DELIMITERS = /[,$|]/
  KEYS = {
    "$" => ['last_name', 'first_name', 'middle_initial', 'campus', 'date_of_birth', 'favorite_color'],
    "," => ['last_name', 'first_name', 'campus', 'favorite_color', 'date_of_birth'],
    "|" => ['last_name', 'first_name', 'middle_initial', 'campus', 'favorite_color', 'date_of_birth']
  }

  def self.call(line)
    new(line).parse
  end

  def initialize(line)
    @line = line
  end

  def parse
    delimiter = @line.match(DELIMITERS).to_s
    keys = KEYS[delimiter]
    parsed_input = @line.split(delimiter)
    Hash[keys.zip parsed_input]
  end

  def sort
    keys = KEYS[delimiter]
    parsed_input = input.split(delimiter)
    Hash[keys.zip parsed_input]
  end

end
