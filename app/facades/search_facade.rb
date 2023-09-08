class SearchFacade 
  def search(query)
    response = service.get_characters(query)
    response.map { |character_data| Character.new(character_data)}
  end

  private 
  def service
    @service ||= AvatarService.new
  end
end