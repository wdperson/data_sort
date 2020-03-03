# frozen_string_literal: true

require_relative 'file_parser'

# Parses Files that are dollar delimited
class DollarFileParser < FileParser
  def delimiter
    '$'
  end

  def hash_keys
    %w[last_name first_name middle_initial campus date_of_birth favorite_color]
  end

  def input_path
    './data_files/dollar.txt'
  end
end
