describe ParseLine do

  describe '.create_hash' do
    subject { described_class.new(line).create_hash }

    context "when we have a comma delimiter" do
      let(:line) { "Kirlin, Mckayla, Atlanta, Maroon, 2/14/1962\n"}
      let(:comma_parsed_hash) { { "last_name"=>"Kirlin", "first_name"=>"Mckayla", "campus"=>"Atlanta", "date_of_birth"=> Date.new(1962,2,14), "favorite_color"=>"Maroon" } }

      it { is_expected.to eq comma_parsed_hash }
    end

    context "when we have a dollar delimiter" do
      let(:line) { "Nolan $ Rhiannon $ O $ LA $ 10-4-1974 $ Vivid Tangerine\n" }
      let(:dollar_parsed_hash) { {"last_name"=>"Nolan", "first_name"=>"Rhiannon", "middle_initial"=>"O", "campus"=>"LA", "favorite_color"=>"Vivid Tangerine", "date_of_birth"=>Date.new(1974,10,4)} }

      it { is_expected.to eq dollar_parsed_hash }
    end

    context "when we have a pipe delimiter" do
      let(:line) { "Goyette | Timmothy | E | London | Pacific Blue | 10-2-1964\n" }
      let(:pipe_parsed_hash) { {"last_name"=>"Goyette", "first_name"=>"Timmothy", "middle_initial"=>"E", "campus"=>"London", "date_of_birth"=> Date.new(1964,10,2), "favorite_color"=>"Pacific Blue"} }

      it { is_expected.to eq pipe_parsed_hash }
    end
  end

  describe '.keys_for_data' do
    subject { described_class.new(line).keys_for_data }

    context "when we have a comma delimiter" do
      let(:line) { "Kirlin, Mckayla, Atlanta, 5/29/1986, Maroon\n" }
      let(:keys) { ["last_name", "first_name", "campus", "favorite_color", "date_of_birth"] }

      it { is_expected.to eq keys }
    end

    context "when we have a dollar delimiter" do
      let(:line) { "Nolan $ Rhiannon $ O $ LA $ 10-4-1974 $ Vivid Tangerine\n" }
      let(:keys) { ["last_name", "first_name", "middle_initial", "campus", "date_of_birth", "favorite_color"] }

      it { is_expected.to eq keys }
    end

    context "when we have a pipe delimiter" do
      let(:line) { "Goyette | Timmothy | E | London | Pacific Blue | 10-2-1964\n" }
      let(:keys) { ["last_name", "first_name", "middle_initial", "campus", "favorite_color", "date_of_birth"] }

      it { is_expected.to eq keys }
    end

  end

  describe '.delimiter' do
    subject { described_class.new(line).delimiter }

    context "when we have a comma delimiter" do
      let(:line) { "Kirlin, Mckayla, Atlanta, 5/29/1986, Maroon\n" }
      let(:delimiter) { "," }

      it { is_expected.to eq delimiter }
    end

    context "when we have a dollar delimiter" do
      let(:line) { "Nolan $ Rhiannon $ O $ LA $ 10-4-1974 $ Vivid Tangerine\n" }
      let(:delimiter) { "$" }

      it { is_expected.to eq delimiter }
    end

    context "when we have a pipe delimiter" do
      let(:line) { "Goyette | Timmothy | E | London | Pacific Blue | 10-2-1964\n" }
      let(:delimiter) { "|" }

      it { is_expected.to eq delimiter }
    end
  end
end
