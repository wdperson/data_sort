class SortData

  def initialize(parsed_data)
    @parsed_data = parsed_data
  end

  def order
    output = []
    output << @parsed_data.sort_by { |pd| [pd[:campus], pd[:last_name]] }
    output << @parsed_data.sort_by { |pd| pd["date_of_birth"] }
    output << @parsed_data.sort_by { |pd| pd["last_name"] }.reverse
    output.flatten.each {|o| puts "#{o.values}" }
  end
end
