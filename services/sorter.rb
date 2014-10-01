class Sorter

  def initialize(parsed_data)
    @parsed_data = parsed_data
  end

  def sort
    puts @parsed_data.sort_by {|pd| pd["campus"]}.sort_by {|c| c["last_name"] }
    puts @parsed_data.sort_by {|pd| pd["date_of_birth"]}
    puts @parsed_data.sort_by {|pd| pd["last_name"] }.reverse
  end

end
