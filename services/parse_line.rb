require 'pry'

class ParseLine
  attr_reader :input

  def initialize(line)
    @unparsed_line = line
    @line = line.split(delimiter).collect(&:strip)
  end

  def create_hash
    pd = Hash[keys_for_data.zip @line]
    format = pd["date_of_birth"].include?('/') ? '%m/%d/%Y' : '%m-%d-%Y'
    pd["date_of_birth"] = Date.strptime (pd["date_of_birth"]), format
    pd
  end

  def keys_for_data
    DelimitedString::KEYS[delimiter]
  end

  def delimiter
    @unparsed_line.match(DelimitedString::DELIMITERS).to_s
  end
end
