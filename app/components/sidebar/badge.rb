class Sidebar::Badge < ApplicationComponent
  delegate :turbo_frame_tag, to: :helpers

  def initialize(badge:)
    @badge = badge
  end

  def render?
    @badge.present?
  end
end
