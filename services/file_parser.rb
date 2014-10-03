require 'pry'

class FileParser
  attr_reader :input

  def initialize(input)
    @input = input
  end

  def process_each_file
    @input.each do |input|
      @file = input
      determine_type
      parse_the_data
      sort_the_data
      display_the_data
    end
  end

  def determine_type
    @type = DelimitedString.new(@file).type
  end

  def parse_the_data
    send("parse_type_#{DelimitedString::DATATYPES[@type]}".to_sym)
  end

  def parse_type_comma
    @parsed_output = CommaDelimitedString.new(@file).parse_file_data
  end

  def parse_type_pipe
    @parsed_output = PipeDelimitedString.new(@file).parse_file_data
  end

  def parse_type_dollar
    @parsed_output = DollarDelimitedString.new(@file).parse_file_data
  end

  def sort_the_data
    send("sort_type_#{DelimitedString::DATATYPES[@type]}".to_sym)
  end

  def sort_type_comma
    @sorted_output = CommaDelimitedString.new(@parsed_output).sort
  end

  def sort_type_pipe
    @sorted_output = PipeDelimitedString.new(@parsed_output).sort
  end

  def sort_type_dollar
    @sorted_output = DollarDelimitedString.new(@parsed_output).sort
  end

  def display_the_data
    OutputFormatter.new(@sorted_output).display
  end

end
