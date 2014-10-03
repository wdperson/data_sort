require File.expand_path('../delimited_string.rb', __FILE__)

class PipeDelimitedString < DelimitedString

  def initialize(input)
    @input = input
  end

  def sort
    Sorter.new(@input).sorted_by_last_name_desc
  end

end
