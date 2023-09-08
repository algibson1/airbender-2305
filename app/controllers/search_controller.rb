class SearchController < ApplicationController
  def index 
    @characters = SearchFacade.new.get_characters(params[:nation])
  end
end