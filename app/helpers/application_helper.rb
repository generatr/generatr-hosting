module ApplicationHelper

  def viewport_tag
    tag 'meta', name: 'viewport', content: 'width=device-width, initial-scale=1.0'
  end

end
