describe DelimitedString do

  describe ".open_file" do
    subject { described_class.new(input).open_file }

    context "when input is comma separated" do
      let(:input) { "data/comma.txt" }
      let(:comma_parsed_data) do
        [{"last_name"=>"Kirlin", "first_name"=>"Mckayla", "campus"=>"Atlanta", "favorite_color"=>"5/29/1986", "date_of_birth"=>"Maroon"},
         {"last_name"=>"Barrows", "first_name"=>"Anika", "campus"=>"HongKong", "favorite_color"=>"5/5/1965", "date_of_birth"=>"Spring"},
         {"last_name"=>"Goyette", "first_name"=>"Timmothy", "campus"=>"London", "favorite_color"=>"10/2/1964", "date_of_birth"=>"Pacific"},
         {"last_name"=>"Nolan", "first_name"=>"Rhiannon", "campus"=>"LosAngeles", "favorite_color"=>"10/4/1974", "date_of_birth"=>"Vivid"},
         {"last_name"=>"Parker", "first_name"=>"Matteo", "campus"=>"Melbourne", "favorite_color"=>"2/14/1962", "date_of_birth"=>"Burnt"},
         {"last_name"=>"Bednar", "first_name"=>"Filomena", "campus"=>"NewYorkCity", "favorite_color"=>"1/24/1980", "date_of_birth"=>"Salmon"},
         {"last_name"=>"Cummerata", "first_name"=>"Elliot", "campus"=>"NewYorkCity", "favorite_color"=>"4/3/1947", "date_of_birth"=>"Neon"},
         {"last_name"=>"Wilkinson", "first_name"=>"Stacy", "campus"=>"NewYorkCity", "favorite_color"=>"1/22/1964", "date_of_birth"=>"Shocking"},
         {"last_name"=>"Bruen", "first_name"=>"Rigoberto", "campus"=>"SanFrancisco", "favorite_color"=>"12/1/1962", "date_of_birth"=>"Raw"}]
      end
      it { is_expected.to eq comma_parsed_data }
    end

    context "when input is dollar separated" do
      let(:input) { "data/dollar.txt" }
      let(:dollar_parsed_data) do
        [{"last_name"=>"Nolan", "first_name"=>"Rhiannon", "middle_initial"=>"O", "campus"=>"LA", "date_of_birth"=>"10-4-1974", "favorite_color"=>"VividTangerine"},
         {"last_name"=>"Wilkinson", "first_name"=>"Stacy", "middle_initial"=>"D", "campus"=>"NYC", "date_of_birth"=>"1-22-1964", "favorite_color"=>"ShockingPink"},
         {"last_name"=>"Bruen", "first_name"=>"Rigoberto", "middle_initial"=>"F", "campus"=>"SF", "date_of_birth"=>"12-1-1962", "favorite_color"=>"RawUmber"}]
      end
      it { is_expected.to eq dollar_parsed_data }
    end

    context "when input is pipe separated" do
      let(:input) { "data/pipe.txt" }
      let(:pipe_parsed_data) do
        [{"last_name"=>"Goyette", "first_name"=>"Timmothy", "middle_initial"=>"E", "campus"=>"London", "favorite_color"=>"PacificBlue", "date_of_birth"=>"10-2-1964"},
         {"last_name"=>"Bednar", "first_name"=>"Filomena", "middle_initial"=>"B", "campus"=>"NewYorkCity", "favorite_color"=>"Salmon", "date_of_birth"=>"1-24-1980"},
         {"last_name"=>"Barrows", "first_name"=>"Anika", "middle_initial"=>"U", "campus"=>"HongKong", "favorite_color"=>"SpringGreen", "date_of_birth"=>"5-5-1965"}]
      end
      it { is_expected.to eq pipe_parsed_data }
    end
  end

  describe ".type" do
    subject { described_class.new(input).type }
    before(:each) do
      allow(File).to receive(:open) { file_data }
    end

    context "when input is comma separated" do
      let(:input) { "data/comma.txt" }
      let(:file_data) { "Kirlin, Mckayla, Atlanta, 5/29/1986, Maroon\n" }
      it { is_expected.to eq "," }
    end

    context "when input is dollar separated" do
      let(:input) { "data/dollar.txt" }
      let(:file_data) { "Nolan $ Rhiannon $ O $ LA $ 10-4-1974 $ Vivid Tangerine\n" }
      it { is_expected.to eq "$" }
    end

    context "when input is pipe separated" do
      let(:input) { "data/pipe.txt" }
      let(:file_data) { "Goyette | Timmothy | E | London | Pacific Blue | 10-2-1964\n" }
      it { is_expected.to eq "|" }
    end
  end
end
