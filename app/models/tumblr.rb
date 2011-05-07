# Model to scrapes Tumblr search

class Tumblr

  attr_accessor :query

  def initialize(attributes)
    @query = attributes.delete(:query)
  end

  def save
  end

  def scrape_search
  end
  
  # TEMP: Will be eventually defined by Wrapper module
  def scrape_search_wrapper
 end
end
