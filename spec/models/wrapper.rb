describe Wrapper do
  
  let(:wrapper) do
    Tumblr.new(:query => "Bob Dylan")
  end

  let(:api_hit) do
    ApiHit.new(:service => "Tumblr")
  end

  it "Tumblr#scrape should be wrapped" do
    wrapper.scrape_search_wrapper.should == true 
  end
    
  it "should instantiate ApiHit" do
    ApiHit.should_receive(:new).with(:service => "Tumblr")
    wrapper.scrape_search_wrapper
  end

  it "should call the method it is wrapping around" do
    wrapper.should_receive(:scrape_search)
    wrapper.scrape_search_wrapper
  end
 
  ## Need to implement count method first
  #it "should save ApiHit after call" do
  #  lambda {
  #    wrapper.scrape_search_wrapper
  #  }.should change(ApiHit, :count).by(1)
  #end
end
