class Page::Menu < ApplicationComponent
  renders_one :header
  renders_one :button
  renders_many :links, Page::Menu::Link
end
