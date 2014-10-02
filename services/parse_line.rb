require 'pry'

class ParseLine
  attr_reader :input

  def initialize(line)
    @line = line
  end

  def create_hash
    Hash[keys_for_data.zip parsed_data]
  end

  def parsed_data
    @line.gsub(/\s+/, "").split(delimiter)
  end

  def keys_for_data
    DelimitedString::KEYS[delimiter]
  end

  def delimiter
    @line.match(DelimitedString::DELIMITERS).to_s
  end
end
