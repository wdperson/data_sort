describe OutputFormatter do
  subject { described_class.new(data).display }
  context 'when comma input' do
    let(:data) do
      [
        {"last_name"=>"Kirlin", "first_name"=>"Mckayla", "campus"=>"Atlanta", "favorite_color"=>"Maroon", "date_of_birth"=>"5/29/1986"},
        {"last_name"=>"Parker", "first_name"=>"Matteo", "campus"=>"Melbourne", "favorite_color"=>"Burnt Sienna", "date_of_birth"=>"2/14/1962"},
        {"last_name"=>"Cummerata", "first_name"=>"Elliot", "campus"=>"New York City", "favorite_color"=>"Neon Carrot", "date_of_birth"=>"4/3/1947"}
      ]
    end
    let(:comma_output_to_display) do
      "Kirlin Mckayla  Atlanta 5/29/1986 Maroon
        Parker Matteo  Melbourne 2/14/1962 Burnt Sienna
        Cummerata Elliot  New York City 4/3/1947 Neon Carrot"
    end

    it { is_expected.to eq comma_output_to_display }
  end

  context 'when pipe input' do
    let(:data) do
      [
        {"last_name"=>"Bruen", "first_name"=>"Rigoberto", "middle_initial"=>"F", "campus"=>"SF", "date_of_birth"=>"12-1-1962", "favorite_color"=>"Raw Umber"},
        {"last_name"=>"Wilkinson", "first_name"=>"Stacy", "middle_initial"=>"D", "campus"=>"NYC", "date_of_birth"=>"1-22-1964", "favorite_color"=>"Shocking Pink"},
        {"last_name"=>"Nolan", "first_name"=>"Rhiannon", "middle_initial"=>"O", "campus"=>"LA", "date_of_birth"=>"10-4-1974", "favorite_color"=>"Vivid Tangerine"}
      ]
    end
    let(:pipe_output_to_display) do
      "Bruen Rigoberto F SF 12-1-1962 Raw Umber
         Wilkinson Stacy D NYC 1-22-1964 Shocking Pink
         Nolan Rhiannon O LA 10-4-1974 Vivid Tangerine"
    end

    it { is_expected.to eq pipe_output_to_display }
  end

  context 'when dollar input' do
    let(:data) do
      [
        {"last_name"=>"Goyette", "first_name"=>"Timmothy", "middle_initial"=>"E", "campus"=>"London", "favorite_color"=>"Pacific Blue", "date_of_birth"=>"10-2-1964"},
        {"last_name"=>"Bednar", "first_name"=>"Filomena", "middle_initial"=>"B", "campus"=>"New York City", "favorite_color"=>"Salmon", "date_of_birth"=>"1-24-1980"},
        {"last_name"=>"Barrows", "first_name"=>"Anika", "middle_initial"=>"U", "campus"=>"Hong Kong", "favorite_color"=>"Spring Green", "date_of_birth"=>"5-5-1965"}
      ]
    end
    let(:dollar_output_to_display) do
      "Goyette Timmothy E London 10-2-1964 Pacific Blue
        Bednar Filomena B New York City 1-24-1980 Salmon
        Barrows Anika U Hong Kong 5-5-1965 Spring Green"
    end

    it { is_expected.to eq dollar_output_to_display }
  end
end
