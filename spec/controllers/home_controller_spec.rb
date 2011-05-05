describe HomeController do
  
context "#search/tumblr" do
  it 'gets search results from tumblr' do
    mock_model(TumblrSearch)
    post :search
  end
 
end

end
