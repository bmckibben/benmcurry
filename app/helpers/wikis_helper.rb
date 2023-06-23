module WikisHelper

  def nested_set(nested_set_query,link_class, parent_id)

    current_level = 1
    first_item = true
    menu = "<ul class='wiki-toc'>"
    tree_toggler = "<i class='tree-toggler bi bi-caret-right-fill'></i>"
    nested_set_query.each do |link|
      if current_level < link.list_level
        menu += " <ul class='wiki-toc tree'>"
      elsif current_level > link.list_level
        menu += "</li></ul>" * (current_level-link.list_level)
      elsif !first_item  
        menu += "</li>"
      else  
        first_item = false
      end
      menu += "<li>#{tree_toggler} <a href='javascript:void(0);' data-wiki-id='#{link.id}' data-parent-id='#{parent_id}' class='#{link_class}'>#{link.title}</a>"
      current_level = link.list_level
    end  

    menu += "</li>"
    menu += ("</ul>" * current_level)

    return menu

  end

    def query_menu
      Wiki.find_by_sql("WITH RECURSIVE category_tree(id, path, my_sort) AS (

      select wikis.id, ARRAY[wikis.id], ARRAY[wikis.default_sort]
      from wikis left outer join wiki_tags on wikis.id = wiki_tags.wiki_id
      where wiki_tags.tag_id is null and (wikis.deleted is null or wikis.deleted is false)

      UNION ALL
      SELECT wiki_tags.wiki_id as id, path || wiki_tags.wiki_id, my_sort || wikis.default_sort
      FROM category_tree
      JOIN wiki_tags ON wiki_tags.tag_id=category_tree.id
      JOIN wikis ON wikis.id=wiki_tags.wiki_id
      WHERE NOT wiki_tags.wiki_id = ANY(path)
      )


      SELECT category_tree.*, wikis.title, wikis.default_sort 
      FROM category_tree 
            RIGHT OUTER JOIN wikis on category_tree.id = wikis.id
      ORDER BY my_sort")
    end  

    def query_toc_hold(id)
      Wiki.find_by_sql("WITH RECURSIVE category_tree(id, path, my_sort) AS (

      select wikis.id, ARRAY[wikis.id], ARRAY[wikis.default_sort]
      from wikis left outer join wiki_tags on wikis.id = wiki_tags.wiki_id
      where wiki_tags.tag_id = #{id} and (wikis.deleted is null or wikis.deleted is false)

      UNION ALL
      SELECT wiki_tags.wiki_id as id, path || wiki_tags.wiki_id, my_sort || wikis.default_sort
      FROM category_tree
      JOIN wiki_tags ON wiki_tags.tag_id=category_tree.id
      JOIN wikis ON wikis.id=wiki_tags.wiki_id
      WHERE NOT wiki_tags.wiki_id = ANY(path)
      )


      SELECT category_tree.*, wikis.title, wikis.default_sort 
      FROM category_tree 
            RIGHT OUTER JOIN wikis on category_tree.id = wikis.id
      ORDER BY my_sort, wikis.created_at desc")
    end 	

    def query_toc(id)
      Wiki.where(parent: id)
    end
end
