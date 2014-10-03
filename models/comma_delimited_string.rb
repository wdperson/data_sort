require File.expand_path('../delimited_string.rb', __FILE__)

class CommaDelimitedString < DelimitedString

  def initialize(input)
    @input = input
  end

  def sort
    Sorter.new(@input).sorted_by_campus_and_last_name
  end
end
