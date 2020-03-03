# frozen_string_literal: true

require 'date'

# Sorter service to take in parsed data and then sort
# based on requirements
class Sorter
  def initialize(input)
    @input = input
    @sorted_output = []
  end

  def sort
    @sorted_output << sorted_by_campus_and_last_name
    @sorted_output << sorted_by_date_of_birth
    @sorted_output << sorted_by_last_name_desc
  end

  def sorted_by_campus_and_last_name
    @input.flatten.sort_by { |pd| [pd['campus'], pd['last_name']] }
  end

  def sorted_by_date_of_birth
    @input.flatten.sort_by { |pd| pd['date_of_birth'] }
  end

  def sorted_by_last_name_desc
    @input.flatten.sort_by { |pd| pd['last_name'] }.reverse
  end
end
