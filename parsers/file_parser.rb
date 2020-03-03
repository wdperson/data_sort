# frozen_string_literal: true

require 'csv'
require_relative '../services/line_parser'

# Parses each row  the data
class FileParser
  attr_reader :input

  def initialize; end

  def process
    parse_rows
  end

  CSV::Converters[:strip] = lambda { |field|
    field.strip
  }

  private

  def parse_rows
    parse_rows = []
    CSV.foreach(input_path, col_sep: delimiter, converters: [:strip]) do |row|
      parse_rows << LineParser.new(row, hash_keys).parse
    end
    parse_rows
  end
end
