SimpleNavigation::Configuration.run do |navigation|
  navigation.items do |primary|
    primary.dom_class = 'nav navbar-nav'
    primary.item :undergrad, 'Undergrad Student', '/students'
    primary.item :graduates, 'Grad Student', '/graduate-students'
    #primary.item :alumni, 'Alumni', alumni_path
    #primary.item :media, 'Media', '/media'
    #primary.item :corporatepartners, 'Corporate Partners', '/corporate-partners'
    primary.item :directory, 'Faculty & Staff', '/directory'
  end
end