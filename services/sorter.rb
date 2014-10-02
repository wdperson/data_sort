class Sorter

  def initialize(parsed_data)
    @parsed_data = parsed_data
  end

  def sorted_by_campus_and_last_name
    @parsed_data.sort_by {|pd| pd["last_name"]}.sort_by {|c| c["campus"] }
  end

  def sorted_by_date_of_birth
    @parsed_data.sort_by {|pd| pd["date_of_birth"]}
  end

  def sorted_by_last_name_desc
    @parsed_data.sort_by {|pd| pd["last_name"] }.reverse
  end

end
