# frozen_string_literal: true

require_relative 'file_parser'

# Parses Files that are comma delimited
class CommaFileParser < FileParser
  def delimiter
    ','
  end

  def hash_keys
    %w[last_name first_name campus favorite_color date_of_birth]
  end

  def input_path
    './data_files/comma.txt'
  end
end
