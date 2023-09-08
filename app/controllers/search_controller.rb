class SearchController < ApplicationController
  def index 
    # require 'pry'; binding.pry
    @characters = SearchFacade.new.find_members(params[:nation])
  end
end