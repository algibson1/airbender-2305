class SearchFacade 
  def search(query)
    response = service.get_characters(query)
    character_data = JSON.parse(response.body, symbolize_names: true)
  end

  def get_characters(query)
    search(query).map { |data| Character.new(data) }
  end

  private 
  def service
    @service ||= AvatarService.new
  end
end