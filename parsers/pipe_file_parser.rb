# frozen_string_literal: true

require_relative 'file_parser'

# Parses Files that are pipe delimited
class PipeFileParser < FileParser
  def delimiter
    '|'
  end

  def hash_keys
    %w[last_name first_name middle_initial campus favorite_color date_of_birth]
  end

  def input_path
    './data_files/pipe.txt'
  end
end
