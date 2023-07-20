module WikisHelper
  def nested_set(nested_set_query,link_class, parent_id)

    current_level = 1
    first_item = true
    if link_class == "tree-menu"  
      menu = "<ul class='tree'>"
    else
      menu = "<ul class='toc'>"
    end  
    tree_toggler = "<i class='tree-toggler bi bi-caret-right-fill'></i>"

    nested_set_query.each do |link|
      if !link.id.nil? and !link.list_level.nil?
      if current_level < link.list_level
        menu += " <ul class='wiki-toc tree'>"
      elsif current_level > link.list_level
        menu += "</li></ul>" * (current_level-link.list_level)
      elsif !first_item  
        menu += "</li>"
      else  
        first_item = false
      end
      menu += "<li>#{tree_toggler}<a href='/wikis/#{link.id}' data-wiki-id='#{link.id}' data-parent-id='#{parent_id}' class='#{link_class}'>#{link.title}</a>"
      current_level = link.list_level
      end
    end  

    menu += "</li>"
    menu += ("</ul>" * current_level)

    return menu

  end

end    