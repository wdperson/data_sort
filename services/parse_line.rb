require 'pry'
require 'csv'

class ParseLine
  attr_reader :input

  def self.call(*args)
    new(*args).sort
  end

  def initialize(input)
    @input = input
  end

  def sort
    keys = ['last_name', 'first_name', 'campus', 'favorite_color', 'date_of_birth' ]
    parsed_input = input.split('$')
    Hash[keys.zip parsed_input]
  end

end
