class SortData


  def initialize(parsed_data)
    @parsed_data = parsed_data
  end

  def order
    output = []
    output << @parsed_data.sort_by {|pd| pd["campus"]}.sort_by {|c| c["last_name"] }
    output << @parsed_data.sort_by {|pd| pd["date_of_birth"]}
    output << @parsed_data.sort_by {|pd| pd["last_name"]}.reverse
  end
end
