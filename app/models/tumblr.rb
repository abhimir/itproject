# Model to scrape Tumblr search

class Tumblr
  attr_accessor :query

  extend Wrapper

  self.wrap_with_api_hit(:scrape_search)

  def initialize(attributes)
    @query = attributes.delete(:query)
  end

  def save
  end
  
  def scrape_search
  end

end
