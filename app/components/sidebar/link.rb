class Sidebar::Link < ApplicationComponent
  delegate :policy, to: :helpers

  def initialize(link:, classes:, active:, inactive:)
    @name = link[:name]
    @url = link[:url]
    @link_classes = Array.wrap(classes[:link])
    @link_inactive = Array.wrap(inactive[:link])
    @link_active = Array.wrap(active[:link])

    @icon_classes = Array.wrap(classes[:icon])
    @icon_inactive = Array.wrap(inactive[:icon])
    @icon_active = Array.wrap(active[:icon])

    @icon = link[:icon]

    @policy = link[:policy]

    @badge = link[:badge]
  end

  def before_render
    if request.path == @url
      @link_classes.push(*@link_active)
      @icon_classes.push(*@icon_active)
    else
      @link_classes.push(*@link_inactive)
      @icon_classes.push(*@icon_inactive)
    end
  end

  def render?
    # policy(@policy).index?
    true
  end
end
