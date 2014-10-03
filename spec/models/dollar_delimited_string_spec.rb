describe DollarDelimitedString do

  describe '.sort' do
    subject { described_class.new(unsorted_input).sort }

    context 'sort by date of birth' do
      let(:unsorted_input) do
        [
          {"last_name"=>"Jones", "first_name"=>"Matteo", "campus"=>"Melbourne", "favorite_color"=>"Silver", "date_of_birth"=>"4/14/1942"},
          {"last_name"=>"Parker", "first_name"=>"William", "campus"=>"Melbourne", "favorite_color"=>"Burnt Sienna", "date_of_birth"=>"2/14/1962"},
          {"last_name"=>"Kirlin", "first_name"=>"Mckayla", "campus"=>"Atlanta", "favorite_color"=>"Maroon", "date_of_birth"=>"5/29/1986"},
          {"last_name"=>"Douglas", "first_name"=>"Fred", "campus"=>"New York City", "favorite_color"=>"Brown", "date_of_birth"=>"2/8/1957"},
          {"last_name"=>"Smith", "first_name"=>"Bob", "campus"=>"Melbourne", "favorite_color"=>"Black", "date_of_birth"=>"3/14/1982"},
          {"last_name"=>"Cummerata", "first_name"=>"Elliot", "campus"=>"New York City", "favorite_color"=>"Neon Carrot", "date_of_birth"=>"4/3/1947"}
        ]
      end
      let(:dollar_parsed_data) do
        [
          {"last_name"=>"Jones", "first_name"=>"Matteo", "campus"=>"Melbourne", "favorite_color"=>"Silver", "date_of_birth"=>"4/14/1942"},
          {"last_name"=>"Cummerata", "first_name"=>"Elliot", "campus"=>"New York City", "favorite_color"=>"Neon Carrot", "date_of_birth"=>"4/3/1947"},
          {"last_name"=>"Douglas", "first_name"=>"Fred", "campus"=>"New York City", "favorite_color"=>"Brown", "date_of_birth"=>"2/8/1957"},
          {"last_name"=>"Parker", "first_name"=>"William", "campus"=>"Melbourne", "favorite_color"=>"Burnt Sienna", "date_of_birth"=>"2/14/1962"},
          {"last_name"=>"Smith", "first_name"=>"Bob", "campus"=>"Melbourne", "favorite_color"=>"Black", "date_of_birth"=>"3/14/1982"},
          {"last_name"=>"Kirlin", "first_name"=>"Mckayla", "campus"=>"Atlanta", "favorite_color"=>"Maroon", "date_of_birth"=>"5/29/1986"}
        ]
      end
      it { is_expected.to eq dollar_parsed_data }
    end
  end
end
