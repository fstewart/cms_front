SimpleNavigation::Configuration.run do |navigation|
  navigation.items do |primary|
    primary.dom_class = "main-menu"
    primary.dom_id = "main-menu"
    primary.item :homepage, '<i class="entypo-home"></i><span>Homepage</span>'.html_safe, '#', :html => {:class => 'root-level has-sub'}, :link_html => {:class => 'title'} do |sub_nav|
      sub_nav.item :homepagecontents, 'Manage Homepage', homepage_index_path, if: proc { current_user.has_role? :admin }
    end
    primary.item :aboutsectiontitle, '<i class="entypo-map"></i><span>Organization</span>'.html_safe, '#', :html => {:class => 'root-level has-sub'}, :link_html => {:class => 'title'} do |sub_nav|
      sub_nav.item :managebuildings, 'About', buildings_path, if: proc { current_user.has_role? :admin }
      sub_nav.item :manageunittypes, 'Department Types', unit_types_path, if: proc { current_user.has_role? :admin }
      #sub_nav.item :managecontacts, 'FAQs', faqs_path
      sub_nav.item :departments, 'Departments, Programs, & Centers', departments_path, if: proc { current_user.has_role? :admin }
      sub_nav.item :directory,'Directory', directory_path,  if: proc { current_user.has_role? :admin }
      sub_nav.item :managecollegevideos, 'College Videos', college_videos_path, if: proc { current_user.has_role? :admin }
    end
    #primary.item :departmenttitle, '<i class="entypo-suitcase"></i><span>Departments</span>'.html_safe, '#', :html => {:class => 'root-level has-sub'}, :link_html => {:class => 'title'} do |sub_nav|
    #  sub_nav.item :managedepartments, 'Manage Departments', departments_path
    #end
    #primary.item :programtitle, '<i class="entypo-suitcase"></i><span>Programs</span>'.html_safe, '#', :html => {:class => 'root-level has-sub'}, :link_html => {:class => 'title'} do |sub_nav|
    #  sub_nav.item :manageprograms, 'Manage Programs', programs_path
    #  sub_nav.item :lift, 'Project LIFT', departments_path
    #end
    #primary.item :centertitle, '<i class="entypo-suitcase"></i><span>Outreach & Research Centers</span>'.html_safe, '#', :html => {:class => 'root-level has-sub'}, :link_html => {:class => 'title'} do |sub_nav|
    #  sub_nav.item :managecenters, 'Manage Centers', departments_path
    #end
    primary.item :graduatestitle, '<i class="entypo-home"></i><span>Manderson</span>'.html_safe, '#', :html => {:class => 'root-level has-sub'}, :link_html => {:class => 'title'} do |sub_nav|
      sub_nav.item :mandersonpages, 'Web Pages', pages_path(:department_id => '1')
      #sub_nav.item :mandersondegrees, 'Degrees', degrees_path
      sub_nav.item :stempath, 'EMBA Pages', departments_path
      sub_nav.item :stempath, 'STEM Path to the MBA Pages', stem_path_index_path
      sub_nav.item :createpath, 'CREATE Path to the MBA Pages', create_path_index_path
      sub_nav.item :alumni, 'Alumni & Corporate Affairs', departments_path
      #sub_nav.item :launchprofiles, 'Graduate Student Profiles', _path
      sub_nav.item :phdstudentprofiles, 'Manage Grad Student Profiles', manderson_profiles_path
      #sub_nav.item :visitors, 'Visitors', departments_path
      
    end
    primary.item :pagestitle, '<i class="entypo-home"></i><span>Pages</span>'.html_safe, '#', :html => {:class => 'root-level has-sub'}, :link_html => {:class => 'title'} do |sub_nav|
      sub_nav.item :managepages, 'Manage Pages', departments_path
    end
    primary.item :profilestitle, '<i class="entypo-vcard"></i><span>Directory</span>'.html_safe, '#', :html => {:class => 'root-level has-sub'}, :link_html => {:class => 'title'} do |sub_nav|
      sub_nav.item :managepages, 'Manage Pages', profiles_path
    end
    primary.item :articlestitle, '<i class="entypo-newspaper"></i><span>News</span>'.html_safe, '#', :html => {:class => 'root-level has-sub'}, :link_html => {:class => 'title'} do |sub_nav|
      sub_nav.item :managearticles, 'Manage Pages', articles_path
    end
    primary.item :eventstitle, '<i class="entypo-calendar"></i><span>Events</span>'.html_safe, '#', :html => {:class => 'root-level has-sub'}, :link_html => {:class => 'title'} do |sub_nav|
      sub_nav.item :manageevents, 'Manage Events', events_path
    end
  end
end
