module ApplicationHelper
  def menu_for(name = 'Logo', url_for = root_path, options = {}, &block)
    logo_link = link_to name, url_for, class: 'navbar-brand'
    nav_ul = content_tag(:ul, capture(&block), class: 'navbar-nav')
    nav_in = safe_join([logo_link, nav_ul])
    content_tag(:nav, nav_in, class: 'navbar navbar-expand-sm bg-dark navbar-dark fixed-top ')
  end

  def menu_item_to(name, menu_path)
    link = link_to name, menu_path, class: 'nav-link'
    content_tag(:li, link, class: 'navbar-item')
  end
end
