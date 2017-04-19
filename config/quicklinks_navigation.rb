SimpleNavigation::Configuration.run do |navigation|
  navigation.items do |primary|
    primary.dom_class = 'nav navbar-nav pull-right'
    primary.item :socialmedia, 'Social Media', '/socialmedia'
    primary.item :directory, 'Faculty', '/directory'
    primary.item :experts, 'Experts Guide', '/experts'
    #primary.item :tools, '<span class="sr-only">Tools</span><i class="fa fa-th fa-lg search-btn"></i>'.html_safe, '#',:link_html => {:title => 'Tools'}, :html => {:class => 'top-search'}
    primary.item :topsearch, 'Tools'.html_safe, '#', :link_html => {:title => 'Tools'}
  end
end