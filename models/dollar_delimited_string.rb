require File.expand_path('../delimited_string.rb', __FILE__)

class DollarDelimitedString < DelimitedString

  def initialize(input)
    @input = input
  end

  def sort
    Sorter.new(@input).sorted_by_date_of_birth
  end
end
