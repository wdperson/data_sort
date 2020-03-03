# frozen_string_literal: true

# Output Formatter service to format data.

class OutputFormatter
  def initialize(data)
    @data = data
  end

  def display
    @data.each_with_index do |data, index|
      print "Output #{index + 1}:\n"
      data.each do |hash|
        print "#{hash['last_name']} #{hash['first_name']} #{hash['campus']} #{date_format(hash['date_of_birth'])} #{hash['favorite_color']}\n"
      end
      print "\n"
    end
  end

  def date_format(date)
    date.strftime('%-m/%-d/%Y')
  end
end
