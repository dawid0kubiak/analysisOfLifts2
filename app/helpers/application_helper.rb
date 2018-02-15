module ApplicationHelper
  def menu_for(name = 'Logo', url_for = root_path, &block)
    logo_link = link_to name, url_for, class: 'navbar-brand'
    nav_ul = content_tag(:ul, capture(&block), class: 'navbar-nav')
    nav_in = safe_join([logo_link, nav_ul])
    content_tag(:nav, nav_in, class: 'navbar navbar-expand-sm bg-dark navbar-dark fixed-top ')
  end

  def menu_item_to(name, menu_path)
    link = link_to name, menu_path, class: 'nav-link'
    content_tag(:li, link, class: 'navbar-item')
  end

  def menu_dropdown(name, &block)
    title = link_to name, '#', class: 'nav-link dropdown-toggle', id: 'navbardrop', 'data-toggle' => 'dropdown'
    content_tag(:li, safe_join([title, capture(&block)]), class: 'nav-item dropdown')
  end

  def dropdown_item_to(name, menu_path)
    link = link_to name, menu_path, class: 'dropdown-item'
    content_tag(:div, link, class: 'dropdown-menu')
  end

  def nav_link_to(name, url_for)
    link_to name, url_for, class: 'nav-link'
  end

  def format_curr(curr)
    Money.new(curr, 'PLN').format
  end

end
