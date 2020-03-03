# frozen_string_literal: true

require 'pry'

# LineParser service to parse each line of data
class LineParser
  attr_reader :input

  CAMPUSES = {
    'LA' => 'Los Angeles',
    'NYC' => 'New York City',
    'SF' => 'San Francisco'
  }.freeze

  def initialize(line)
    @line = line
  end

  def parse
    @pd = Hash[hash_keys.zip parsed_line]
    correct_campuses
    correct_date
    @pd
  end

  def parsed_line
    @line.split(matched_line_delimiter).collect(&:strip)
  end

  def hash_keys
    Sorter::KEYS[matched_line_delimiter]
  end

  def matched_line_delimiter
    @line.match(Sorter::DELIMITERS).to_s
  end

  def correct_campuses
    @pd['campus'] = CAMPUSES[@pd['campus']] if CAMPUSES.key?(@pd['campus'])
  end

  def correct_date
    format = @pd['date_of_birth'].include?('/') ? '%m/%d/%Y' : '%m-%d-%Y'
    @pd['date_of_birth'] = Date.strptime (@pd['date_of_birth']), format
  end
end
