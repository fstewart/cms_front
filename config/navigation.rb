# -*- coding: utf-8 -*-
# Configures your navigation
SimpleNavigation::Configuration.run do |navigation|

  navigation.autogenerate_item_ids = false
  navigation.selected_class = 'active'

  # Specify a custom renderer if needed.
  # The default renderer is SimpleNavigation::Renderer::List which renders HTML lists.
  # The renderer can also be specified as option in the render_navigation call.
  #navigation.renderer = Your::Custom::Renderer

  # Specify the class that will be applied to active navigation items. Defaults to 'selected' 
  #navigation.selected_class = 'selected'

  # Specify the class that will be applied to the current leaf of
  # active navigation items. Defaults to 'simple-navigation-active-leaf'
  #navigation.active_leaf_class = 'simple-navigation-active-leaf'

  # Specify if item keys are added to navigation items as id. Defaults to true
  #navigation.autogenerate_item_ids = true

  # You can override the default logic that is used to autogenerate the item ids.
  # To do this, define a Proc which takes the key of the current item as argument.
  # The example below would add a prefix to each key.
  #navigation.id_generator = Proc.new {|key| "my-prefix-#{key}"}

  # If you need to add custom html around item names, you can define a proc that
  # will be called with the name you pass in to the navigation.
  # The example below shows how to wrap items spans.
  #navigation.name_generator = Proc.new {|name, item| "<span>#{name}</span>"}

  # Specify if the auto highlight feature is turned on (globally, for the whole navigation). Defaults to true
  #navigation.auto_highlight = true
  
  # Specifies whether auto highlight should ignore query params and/or anchors when 
  # comparing the navigation items with the current URL. Defaults to true 
  #navigation.ignore_query_params_on_auto_highlight = true
  #navigation.ignore_anchors_on_auto_highlight = true
  
  # If this option is set to true, all item names will be considered as safe (passed through html_safe). Defaults to false.
  #navigation.consider_item_names_as_safe = false

  # Define the primary navigation
  navigation.items do |primary|
    # Add an item to the primary navigation. The following params apply:
    # key - a symbol which uniquely defines your navigation item in the scope of the primary_navigation
    # name - will be displayed in the rendered navigation. This can also be a call to your I18n-framework.
    # url - the address that the generated item links to. You can also use url_helpers (named routes, restful routes helper, url_for etc.)
    # options - can be used to specify attributes that will be included in the rendered navigation item (e.g. id, class etc.)
    #           some special options that can be set:
    #           :if - Specifies a proc to call to determine if the item should
    #                 be rendered (e.g. <tt>if: -> { current_user.admin? }</tt>). The
    #                 proc should evaluate to a true or false value and is evaluated in the context of the view.
    #           :unless - Specifies a proc to call to determine if the item should not
    #                     be rendered (e.g. <tt>unless: -> { current_user.admin? }</tt>). The
    #                     proc should evaluate to a true or false value and is evaluated in the context of the view.
    #           :method - Specifies the http-method for the generated link - default is :get.
    #           :highlights_on - if autohighlighting is turned off and/or you want to explicitly specify
    #                            when the item should be highlighted, you can set a regexp which is matched
    #                            against the current URI.  You may also use a proc, or the symbol <tt>:subpath</tt>.
    #

    primary.item :admin, 'Admin', admin_root_path, :if => Proc.new { current_user.administrator? } do |admin|
      admin.dom_class = 'tabs span16'
    end

    primary.item :home, 'Home', root_path do |sub_nav|
      sub_nav.item :undergraduates, 'Undergraduate', url, options
      sub_nav.item :graduates, 'Graduates', url, options
      sub_nav.item :alumni, 'Alumni', url, options
      sub_nav.item :media, 'Media', url, options
      sub_nav.item :recruiters, 'Recruiters', url, options
      sub_nav.item :newsroom, 'Newsroom', url, options
      sub_nav.item :socialmedia, 'Social Media', url, options

      sub_nav.item(:profiles, 'Faculty', profile_path, highlights_on: /profiles/) do |profile|
        department.item :profile, @profile.try(:name), url_for(@profile), highlights_on: /profile\/[0-9]+/
      end

      sub_nav.item :experts, 'Experts Guide', url, options
    end

    primary.item :home, 'Home', root_path do |sub_nav|
      sub_nav.item :about, 'About', url, options
      sub_nav.item :academics, 'Academics', academic_path

      sub_nav.item(:departments, 'Departments', department_path, highlights_on: /departments/) do |department|
        department.item :department, @department.try(:name), url_for(@department), highlights_on: /department\/[0-9]+/
      end

      sub_nav.item :graduate_programs, 'Graduate Programs', url, options
      sub_nav.item :news, 'News', url, options
      sub_nav.item :events, 'Events', url, options
      sub_nav.item :student_services, 'Student Services', url, options
      sub_nav.item :centers, 'Research & Outreach', url, options
    end

    primary.item :home, 'Alumni Home', alumni_path do |sub_nav|
      sub_nav.item :ces, 'Commerce Executives Society', url, options

      sub_nav.item :about, 'Career', url, options do |career|
        career.item :jobboard, 'Job Board', url, options
        career.item :educationalpodcasts, 'Educational Podcasts', url, options
      end

      sub_nav.item :aboutyou, 'About You', url, options do |ay|
        ay.item :alumniachievements,'Alumni Achievements', url, options
        ay.item :infoupdates, 'Updates Your Information', url, options
      end

      sub_nav.item :aboutus, 'About Us', url, options do |au|
        au.item :staff,'Staff', url, options
        au.item :tour, 'Virtual Tour', url, options
        au.item :executive, 'The Executive', url, options
        au.item :store, 'Culverhouse Apparel', url, options
      end

      sub_nav.item :giving, 'Giving', url, options do |giving|
        au.item :donate,'Donate', url, options
        au.item :supportingculverhouse, 'Supporting Culverhouse', url, options
      end

      sub_nav.item :alumnicalendar, 'Event Calendar', url, options
    end



    #primary.item :departments, 'departments', departments_path

    # Add an item which has a sub navigation (same params, but with block)
    #primary.item :key_2, 'name', url, options do |sub_nav|
      # Add an item to the sub navigation (same params again)
    #  sub_nav.item :key_2_1, 'name', url, options
    #end

    # You can also specify a condition-proc that needs to be fullfilled to display an item.
    # Conditions are part of the options. They are evaluated in the context of the views,
    # thus you can use all the methods and vars you have available in the views.
    #primary.item :key_3, 'Admin', url, class: 'special', if: -> { current_user.admin? }
    #primary.item :key_4, 'Account', url, unless: -> { logged_in? }

    # you can also specify html attributes to attach to this particular level
    # works for all levels of the menu
    #primary.dom_attributes = {id: 'menu-id', class: 'menu-class'}

    # You can turn off auto highlighting for a specific level
    #primary.auto_highlight = false
  end
end
