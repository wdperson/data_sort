class Sorter

  def initialize(parsed_data)
    @parsed_data = parsed_data
  end

  def sorted_by_campus_and_last_name
    @parsed_data.sort_by {|pd| [pd["campus"], pd["last_name"]]}
  end

  def sorted_by_date_of_birth
    @parsed_data.sort_by { |pd| pd["date_of_birth"].split(/[\/-]/).last }
  end

  def sorted_by_last_name_desc
    @parsed_data.sort_by {|pd| pd["last_name"] }.reverse
  end

end
