module ApplicationHelper
  def icon(name:, weight: :regular, **options)
    classes = Array.wrap(options[:class])
    classes << "fa-#{name}"
    classes << "fa-#{weight}"
    options[:class] = classes.join(" ")
    tag.i(nil, **options)
  end
end
