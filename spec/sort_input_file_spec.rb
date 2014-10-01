describe SortInputFile do

  let(:input) { "dollar.txt" }
  let(:second_input) { "pipe.txt" }
  let(:sorted_data) do
    [
      {"last_name"=>"Bruen ", "first_name"=>" Rigoberto ", "campus"=>" F ", "favorite_color"=>" SF ", "date_of_birth"=>" 12-1-1962 "},
      {"last_name"=>"Nolan ", "first_name"=>" Rhiannon ", "campus"=>" O ", "favorite_color"=>" LA ", "date_of_birth"=>" 10-4-1974 "},
      {"last_name"=>"Wilkinson ", "first_name"=>" Stacy ", "campus"=>" D ", "favorite_color"=>" NYC ", "date_of_birth"=>" 1-22-1964 "}
    ]
  end

  def results
    SortInputFile.call input
  end

  describe '.call' do

    context "call input data service" do
      it "should do something" do
        expect(InputData).to receive(:new).with(input).exactly(1).times
        results
      end
    end

    context "call output data service" do
      it "should do something" do
        expect(OutputData).to receive(:new).with(sorted_data).exactly(1).times
        results
      end
    end

  end

end
