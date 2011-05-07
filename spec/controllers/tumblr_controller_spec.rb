require 'spec_helper'

describe TumblrController do
  
context '#create' do

  before(:each) do
    @tumblr = Tumblr.new(:query => "Bob Dylan")
  end

  it 'new instance for each query' do
    Tumblr.should_receive(:new).with(({"query"=>"Bob Dylan"})).and_return(@tumblr)
    post :create, {:tumblr => {:query => "Bob Dylan"}}
  end

  it 'save that instance' do
    Tumblr.stub!(:new).and_return(@tumblr)
    @tumblr.should_receive(:save)

    post :create, {:tumblr => {:query => "Bob Dylan"}}
  end

  it 'scrape Tumblr after create' do
    Tumblr.stub!(:new).and_return(@tumblr)
    @tumblr.should_receive(:scrape_search_wrapper)

    post :create, {:tumblr => {:query => "Bob Dylan"}}
  end
end

end
