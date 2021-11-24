class ApplicationComponent < ViewComponent::Base
  delegate :current_user, to: :controller
  delegate :fa_icon, :icon, :nav_link_to, :turbo_frame_tag, :policy, to: :helpers
end
