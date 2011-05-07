describe Tumblr do

  let(:tumblr) do
    Tumblr.new(:query => "Bob Dylan")
  end

  it "should return query" do
    tumblr.query.should == "Bob Dylan"
  end

end
