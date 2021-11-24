class Searchbar::Button < ApplicationComponent
  def initialize(button:)
    @url = button.delete(:url)
    @visible = button.delete(:visible)
    @text = button.delete(:text)
    @icon = button.delete(:icon)
    @attributes = button
  end

  def render?
    @visible
  end
end
