describe OutputFormatter do
  describe '#display' do
    subject { capture_stdout { described_class.new(data).display } }

    let(:data) do
      [
        [
          {"last_name"=>"Cummerata", "first_name"=>"Elliot", "campus"=>"New York City", "favorite_color"=>"Neon Carrot", "date_of_birth"=>Date.new(1947,04,03)},
          {"last_name"=>"Parker", "first_name"=>"Matteo", "campus"=>"Melbourne", "favorite_color"=>"Burnt Sienna", "date_of_birth"=>Date.new(1947,04,03)},
          {"last_name"=>"Kirlin", "first_name"=>"Mckayla", "campus"=>"Atlanta", "favorite_color"=>"Maroon", "date_of_birth"=>Date.new(1947,04,03)}
        ]
      ]
    end

    let(:output_to_display) do
      "Output: 1\nCummerata Elliot New York City 4/3/1947 Neon Carrot \nParker Matteo Melbourne 4/3/1947 Burnt Sienna \nKirlin Mckayla Atlanta 4/3/1947 Maroon \n\n"
    end

    it { is_expected.to eq output_to_display }
  end
end
