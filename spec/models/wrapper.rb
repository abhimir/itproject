describe Wrapper do
  
  it "should define a wrap method for Tumblr#scrap_search" do
    Tumblr.new(:query => "Bob Dylan").scrape_search_wrapper.should == true
  end
    
 
end
