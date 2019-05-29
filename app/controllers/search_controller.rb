class SearchController < ApplicationController
  def index
    @results = params[:skills]
    raise
  end
end
