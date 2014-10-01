require 'pry'

class FileParser
  attr_reader :input

  def initialize(input)
    # there are 3 files at this point.  We need to break it down to 1 input each and then initialize this input
    @input = input
    initialize_strings
  end

  def output_based_on_sort(hsh={})
    Sorter.new(@output).sort(hsh)
  end

  def initialize_strings
    @output = []
    @input.each do |input|
      type = DelimitedString.new(input).determine_type
      @output = DollarDelimitedString.new(input).open_file if type == "$"
      @output = PipeDelimitedString.new(input).open_file if type == "|"
      @output = CommaDelimitedString.new(input).open_file if type == ","
    end
    @output
  end

end
