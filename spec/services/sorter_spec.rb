describe Sorter do

  describe ".sort" do
    let(:parsed_data) do
      [
        {"last_name"=>"Kirlin", "first_name"=>"Mckayla", "campus"=>"Atlanta", "favorite_color"=>"Maroon", "date_of_birth"=>"5/29/1986"},
        {"last_name"=>"Parker", "first_name"=>"Matteo", "campus"=>"Melbourne", "favorite_color"=>"Burnt Sienna", "date_of_birth"=>"2/14/1962"},
        {"last_name"=>"Cummerata", "first_name"=>"Elliot", "campus"=>"New York City", "favorite_color"=>"Neon Carrot", "date_of_birth"=>"4/3/1947"},
        {"last_name"=>"Nolan", "first_name"=>"Rhiannon", "middle_initial"=>"O", "campus"=>"LA", "date_of_birth"=>"10-4-1974", "favorite_color"=>"Vivid Tangerine"},
        {"last_name"=>"Wilkinson", "first_name"=>"Stacy", "middle_initial"=>"D", "campus"=>"NYC", "date_of_birth"=>"1-22-1964", "favorite_color"=>"Shocking Pink"},
        {"last_name"=>"Bruen", "first_name"=>"Rigoberto", "middle_initial"=>"F", "campus"=>"SF", "date_of_birth"=>"12-1-1962", "favorite_color"=>"Raw Umber"},
        {"last_name"=>"Goyette", "first_name"=>"Timmothy", "middle_initial"=>"E", "campus"=>"London", "favorite_color"=>"Pacific Blue", "date_of_birth"=>"10-2-1964"},
        {"last_name"=>"Bednar", "first_name"=>"Filomena", "middle_initial"=>"B", "campus"=>"New York City", "favorite_color"=>"Salmon", "date_of_birth"=>"1-24-1980"},
        {"last_name"=>"Barrows", "first_name"=>"Anika", "middle_initial"=>"U", "campus"=>"Hong Kong", "favorite_color"=>"Spring Green", "date_of_birth"=>"5-5-1965"}
      ]
    end

    context "by campus and then last name" do
      subject { described_class.new(parsed_data).sorted_by_campus_and_last_name }
      let(:sorted_campus_last_name_data) do
        [
          {"last_name"=>"Kirlin", "first_name"=>"Mckayla", "campus"=>"Atlanta", "favorite_color"=>"Maroon", "date_of_birth"=>"5/29/1986"},
          {"last_name"=>"Barrows", "first_name"=>"Anika", "middle_initial"=>"U", "campus"=>"Hong Kong", "favorite_color"=>"Spring Green", "date_of_birth"=>"5-5-1965"},
          {"last_name"=>"Nolan", "first_name"=>"Rhiannon", "middle_initial"=>"O", "campus"=>"LA", "date_of_birth"=>"10-4-1974", "favorite_color"=>"Vivid Tangerine"},
          {"last_name"=>"Goyette", "first_name"=>"Timmothy", "middle_initial"=>"E", "campus"=>"London", "favorite_color"=>"Pacific Blue", "date_of_birth"=>"10-2-1964"},
          {"last_name"=>"Parker", "first_name"=>"Matteo", "campus"=>"Melbourne", "favorite_color"=>"Burnt Sienna", "date_of_birth"=>"2/14/1962"},
          {"last_name"=>"Wilkinson", "first_name"=>"Stacy", "middle_initial"=>"D", "campus"=>"NYC", "date_of_birth"=>"1-22-1964", "favorite_color"=>"Shocking Pink"},
          {"last_name"=>"Bednar", "first_name"=>"Filomena", "middle_initial"=>"B", "campus"=>"New York City", "favorite_color"=>"Salmon", "date_of_birth"=>"1-24-1980"},
          {"last_name"=>"Cummerata", "first_name"=>"Elliot", "campus"=>"New York City", "favorite_color"=>"Neon Carrot", "date_of_birth"=>"4/3/1947"},
          {"last_name"=>"Bruen", "first_name"=>"Rigoberto", "middle_initial"=>"F", "campus"=>"SF", "date_of_birth"=>"12-1-1962", "favorite_color"=>"Raw Umber"}
        ]
      end

      it { is_expected.to eq sorted_campus_last_name_data }
    end

    context 'by date of birth' do
      subject { described_class.new(parsed_data).sorted_by_date_of_birth }

      let(:date_of_birth_parsed_data) do
        [
          {"last_name"=>"Wilkinson", "first_name"=>"Stacy", "middle_initial"=>"D", "campus"=>"NYC", "date_of_birth"=>"1-22-1964", "favorite_color"=>"Shocking Pink"},
          {"last_name"=>"Bednar", "first_name"=>"Filomena", "middle_initial"=>"B", "campus"=>"New York City", "favorite_color"=>"Salmon", "date_of_birth"=>"1-24-1980"},
          {"last_name"=>"Goyette", "first_name"=>"Timmothy", "middle_initial"=>"E", "campus"=>"London", "favorite_color"=>"Pacific Blue", "date_of_birth"=>"10-2-1964"},
          {"last_name"=>"Nolan", "first_name"=>"Rhiannon", "middle_initial"=>"O", "campus"=>"LA", "date_of_birth"=>"10-4-1974", "favorite_color"=>"Vivid Tangerine"},
          {"last_name"=>"Bruen", "first_name"=>"Rigoberto", "middle_initial"=>"F", "campus"=>"SF", "date_of_birth"=>"12-1-1962", "favorite_color"=>"Raw Umber"},
          {"last_name"=>"Parker", "first_name"=>"Matteo", "campus"=>"Melbourne", "favorite_color"=>"Burnt Sienna", "date_of_birth"=>"2/14/1962"},
          {"last_name"=>"Cummerata", "first_name"=>"Elliot", "campus"=>"New York City", "favorite_color"=>"Neon Carrot", "date_of_birth"=>"4/3/1947"},
          {"last_name"=>"Barrows", "first_name"=>"Anika", "middle_initial"=>"U", "campus"=>"Hong Kong", "favorite_color"=>"Spring Green", "date_of_birth"=>"5-5-1965"},
          {"last_name"=>"Kirlin", "first_name"=>"Mckayla", "campus"=>"Atlanta", "favorite_color"=>"Maroon", "date_of_birth"=>"5/29/1986"}
        ]
      end

      it { is_expected.to eq date_of_birth_parsed_data }
    end

    context "by last name desc" do
      subject { described_class.new(parsed_data).sorted_by_last_name_desc }
      let(:last_name_desc_parsed_data) do
        [
          {"last_name"=>"Wilkinson", "first_name"=>"Stacy", "middle_initial"=>"D", "campus"=>"NYC", "date_of_birth"=>"1-22-1964", "favorite_color"=>"Shocking Pink"},
          {"last_name"=>"Parker", "first_name"=>"Matteo", "campus"=>"Melbourne", "favorite_color"=>"Burnt Sienna", "date_of_birth"=>"2/14/1962"},
          {"last_name"=>"Nolan", "first_name"=>"Rhiannon", "middle_initial"=>"O", "campus"=>"LA", "date_of_birth"=>"10-4-1974", "favorite_color"=>"Vivid Tangerine"},
          {"last_name"=>"Kirlin", "first_name"=>"Mckayla", "campus"=>"Atlanta", "favorite_color"=>"Maroon", "date_of_birth"=>"5/29/1986"},
          {"last_name"=>"Goyette", "first_name"=>"Timmothy", "middle_initial"=>"E", "campus"=>"London", "favorite_color"=>"Pacific Blue", "date_of_birth"=>"10-2-1964"},
          {"last_name"=>"Cummerata", "first_name"=>"Elliot", "campus"=>"New York City", "favorite_color"=>"Neon Carrot", "date_of_birth"=>"4/3/1947"},
          {"last_name"=>"Bruen", "first_name"=>"Rigoberto", "middle_initial"=>"F", "campus"=>"SF", "date_of_birth"=>"12-1-1962", "favorite_color"=>"Raw Umber"},
          {"last_name"=>"Bednar", "first_name"=>"Filomena", "middle_initial"=>"B", "campus"=>"New York City", "favorite_color"=>"Salmon", "date_of_birth"=>"1-24-1980"},
          {"last_name"=>"Barrows", "first_name"=>"Anika", "middle_initial"=>"U", "campus"=>"Hong Kong", "favorite_color"=>"Spring Green", "date_of_birth"=>"5-5-1965"}
        ]
      end

      it { is_expected.to eq last_name_desc_parsed_data }
    end
  end
end
