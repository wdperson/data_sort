require 'pry'

class FileParser
  attr_reader :input

  def initialize(input)
    @input = input
  end

  def process_each_file
    @input.each do |input|
      parse_data(input)
      sort_the_data
      display_the_data
    end
  end

  def parse_data(input)
    type = DelimitedString.new(input).type
    parse_data_for_type(type, input)
  end

  def parse_data_for_type(type, input)
    @output = PipeDelimitedString.new(input).open_file if type == "|"
    @output = CommaDelimitedString.new(input).open_file if type == ","
    @output = DollarDelimitedString.new(input).open_file if type == "$"
  end

  def sort_the_data
    @campus_last_name = Sorter.new(@output).sorted_by_campus_and_last_name
    @date_of_birth = Sorter.new(@output).sorted_by_date_of_birth
    @last_name_desc = Sorter.new(@output).sorted_by_last_name_desc
  end

  def display_the_data
    #OutputFormatter.new(@campus_last_name).display
    #OutputFormatter.new(@date_of_birth).display
    #OutputFormatter.new(@last_name_desc).display
    @campus_last_name.flatten.each {|o| puts "#{o.values}" }
    @date_of_birth.flatten.each {|o| puts "#{o.values}" }
    @last_name_desc.flatten.each {|o| puts "#{o.values}" }
  end
end
