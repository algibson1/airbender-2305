class SearchController < ApplicationController
  def index 
    @characters = SearchFacade.new.search(params[:nation])
  end
end