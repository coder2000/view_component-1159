class ApplicationComponent < ViewComponent::Base
  delegate :icon, :nav_link_to, to: :helpers
end
