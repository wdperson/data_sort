require 'pry'
require 'csv'

class ParseLine
  attr_reader :input

  DELIMITERS = /[,$|]/
  KEYS = {
    "$" => ['last_name', 'first_name', 'middle_initial', 'campus', 'date_of_birth', 'favorite_color'],
    "," => ['last_name', 'first_name', 'campus', 'favorite_color', 'date_of_birth'],
    "|" => ['last_name', 'first_name', 'middle_initial', 'campus', 'favorite_color', 'date_of_birth']
  }

  def self.call(*args)
    new(*args).sort
  end

  def initialize(input)
    @input = input
  end

  def sort
    delimiter = detect_delimiter
    keys = KEYS[delimiter]
    parsed_input = input.split(delimiter)
    Hash[keys.zip parsed_input]
  end

  def detect_delimiter
    @input.match(DELIMITERS).to_s
  end
end
