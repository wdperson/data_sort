describe DelimitedString do

  describe ".type" do
    subject { described_class.new(input).type }
    before(:each) do
      allow(File).to receive(:open) { file_data }
    end

    context "when input is comma separated" do
      let(:input) { "fixtures/comma.txt" }
      let(:file_data) { "Kirlin, Mckayla, Atlanta, 5/29/1986, Maroon\n" }
      it { is_expected.to eq "," }
    end

    context "when input is dollar separated" do
      let(:input) { "fixtures/dollar.txt" }
      let(:file_data) { "Nolan $ Rhiannon $ O $ LA $ 10-4-1974 $ Vivid Tangerine\n" }
      it { is_expected.to eq "$" }
    end

    context "when input is pipe separated" do
      let(:input) { "fixtures/pipe.txt" }
      let(:file_data) { "Goyette | Timmothy | E | London | Pacific Blue | 10-2-1964\n" }
      it { is_expected.to eq "|" }
    end
  end

  describe ".parse_file_data" do
    subject { described_class.new(input).parse_file_data }

    context "when input is comma separated" do
      let(:input) { "spec/fixtures/comma.txt" }
      let(:comma_parsed_data) do
        [{"last_name"=>"Kirlin", "first_name"=>"Mckayla", "campus"=>"Atlanta", "date_of_birth"=>Date.new(1986,05,29), "favorite_color"=>"Maroon"},
         {"last_name"=>"Parker", "first_name"=>"Matteo", "campus"=>"Melbourne", "date_of_birth"=>Date.new(1962,2,14), "favorite_color"=>"Burnt Sienna"},
         {"last_name"=>"Cummerata", "first_name"=>"Elliot", "campus"=>"New York City", "date_of_birth"=>Date.new(1947,4,3), "favorite_color"=>"Neon Carrot"}]
      end
      it { is_expected.to eq comma_parsed_data }
    end

    context "when input is dollar separated" do
      let(:input) { "spec/fixtures/dollar.txt" }
      let(:dollar_parsed_data) do
        [{"last_name"=>"Nolan", "first_name"=>"Rhiannon", "middle_initial"=>"O", "campus"=>"Los Angeles", "date_of_birth"=>Date.new(1974,10,4), "favorite_color"=>"Vivid Tangerine"},
         {"last_name"=>"Wilkinson", "first_name"=>"Stacy", "middle_initial"=>"D", "campus"=>"New York City", "date_of_birth"=>Date.new(1964,1,22), "favorite_color"=>"Shocking Pink"},
         {"last_name"=>"Bruen", "first_name"=>"Rigoberto", "middle_initial"=>"F", "campus"=>"San Francisco", "date_of_birth"=>Date.new(1962,12,1), "favorite_color"=>"Raw Umber"}]
      end
      it { is_expected.to eq dollar_parsed_data }
    end

    context "when input is pipe separated" do
      let(:input) { "spec/fixtures/pipe.txt" }
      let(:pipe_parsed_data) do
        [{"last_name"=>"Goyette", "first_name"=>"Timmothy", "middle_initial"=>"E", "campus"=>"London", "favorite_color"=>"Pacific Blue", "date_of_birth"=>Date.new(1964,10,2)},
         {"last_name"=>"Bednar", "first_name"=>"Filomena", "middle_initial"=>"B", "campus"=>"New York City", "favorite_color"=>"Salmon", "date_of_birth"=>Date.new(1980,1,24)},
         {"last_name"=>"Barrows", "first_name"=>"Anika", "middle_initial"=>"U", "campus"=>"Hong Kong", "favorite_color"=>"Spring Green", "date_of_birth"=>Date.new(1965,5,5)}]
      end
      it { is_expected.to eq pipe_parsed_data }
    end
  end
end
