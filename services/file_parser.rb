require 'pry'

class FileParser
  attr_reader :input

  def initialize(input)
    # this is 3 files at this point.  We need to break it down to 1 input each and then initialize this input
    @input = input
    initialize_strings
  end

  # this is the entry point for the entire application.
  def sort_on

  end

  def initialize_strings
    @input.each do |input|
      type = DelimitedString.new(input).determine_type
      if type == "$"
        DollarDelimitedString.new(input).open_file
      elsif type == "|"
        PipeDelimitedString.new(input).open_file
      else
        CommaDelimitedString.new(input).open_file
      end
    end
  end

end
