class TumblrController < ApplicationController

  def create
    @tumblr = Tumblr.new(params[:tumblr])

    @tumblr.save
    @tumblr.scrape_search_wrapper
    
    respond_to do |format|
      format.html {redirect_to '/'}
      format.js
    end
  end

end
