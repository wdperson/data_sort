class OutputFormatter

  def initialize(data)
    @data = data
  end

  def display
    @data.each do |data|
      data.each do |k, v|
        print "#{v} "
      end
      print "\n"
    end
  end

end
