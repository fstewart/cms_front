SimpleNavigation::Configuration.run do |navigation|
  navigation.items do |primary|
    primary.dom_class = 'nav nav-justified'
    primary.item :mybama, '<i class="fa fa-list"></i>MyBama'.html_safe, 'http://mybama.ua.edu', :link_html => {:target => '_blank'}
    primary.item :mail, '<i class="fa fa-envelope"></i>Email'.html_safe, 'http://mail.cba.ua.edu', :link_html => {:target => '_blank'}
    #primary.item :search, '<i class="fa fa-search"></i>Search'.html_safe, '/search'
    #primary.item :profiles, '<i class="fa fa-compass"></i> Directory'.html_safe, profiles_path
  end
end