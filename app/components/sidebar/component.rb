class Sidebar::Component < ApplicationComponent
  def initialize
    @classes = {link: "group flex items-center px-2 py-2 text-base font-medium rounded-md", icon: "mr-4 flex-shrink-0 h-6 w-6 fa-xl fa-fw"}
    @active = {link: "bg-gray-100 text-gray-900", icon: "text-gray-500"}
    @inactive = {link: "text-gray-600 hover:bg-gray-50 hover:text-gray-900", icon: "text-gray-400 group-hover:text-gray-500"}
  end

  def before_render
    @links = [
      {
        name: "Dashboard",
        url: "/",
        icon: "gauge-simple",
      },
      {
        name: "Sales",
        url: "/sales",
        icon: "cash-register",
      },
      {
        name: "Orders",
        url: "/orders",
        icon: "receipt",
      },
      {
        name: "Point Shop",
        url: "/shop",
        icon: "bag-shopping",
      },
      {
        name: "Help",
        url: "help",
        icon: "question",
      }
    ]
  end
end
