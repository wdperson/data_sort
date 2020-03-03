require_relative 'sorter'
# frozen_string_literal: true

# LineParser service to parse each line of data
class LineParser
  attr_reader :input

  CAMPUSES = {
    'LA' => 'Los Angeles',
    'NYC' => 'New York City',
    'SF' => 'San Francisco'
  }.freeze

  def initialize(line, hash_keys)
    @line = line
    @hash_keys = hash_keys
  end

  def parse
    @pd = Hash[@hash_keys.zip @line]
    correct_campuses
    correct_date
    @pd
  end

  def correct_campuses
    @pd['campus'] = CAMPUSES[@pd['campus']] if CAMPUSES.key?(@pd['campus'])
  end

  def correct_date
    format = @pd['date_of_birth'].include?('/') ? '%m/%d/%Y' : '%m-%d-%Y'
    @pd['date_of_birth'] = Date.strptime (@pd['date_of_birth']), format
  end
end
