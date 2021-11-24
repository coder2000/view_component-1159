class Page::Menu::Link < ApplicationComponent
  def initialize(name:, url:, icon: nil, visible: true, **attributes)
    @name = name
    @url = url
    @icon = icon
    @visible = visible
    @attributes = attributes
  end

  def render?
    @visible
  end
end
