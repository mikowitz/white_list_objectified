module WhiteListParameterFiltering
  
  @@white_lister ||= WhiteLister.new
  
  # kind of limited as this currently stands
  def white_list_params!(obj, method)
    if !params[obj].nil? && params[obj].is_a?(Hash) && !params[obj][method].nil?
      params[obj][method] = @@white_lister.white_list(params[obj][method])
    end
  end
end