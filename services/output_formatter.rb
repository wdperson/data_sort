class OutputFormatter

  def initialize(data)
    @data = data
  end

  def display
    @data.each do |d|
      DelimitedString::KEYS["$"].each do |key|
        print "#{d[key]} "
      end
      print "\n"
    end
  end

end
