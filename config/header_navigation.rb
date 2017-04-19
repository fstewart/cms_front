SimpleNavigation::Configuration.run do |navigation|

  # If you need to add custom html around item names, you can define a proc that
  # will be called with the name you pass in to the navigation.
  # The example below shows how to wrap items spans.
  # navigation.name_generator = Proc.new {|name, item| "<span>#{name}</span>"}

  navigation.autogenerate_item_ids = false
  navigation.selected_class = 'active'

  navigation.items do |primary|
    primary.dom_class = "nav navbar-nav main-nav"
    primary.item :placeholder, '<i class="fa fa-times"></i>'.html_safe, '#', :html => {:class => 'visible-xs visible-sm'}, :link_html => {:class => 'nav-toggle text-center'}
    primary.item :about, 'About', '/about', :html => {:class => 'dropdown mega-menu'}, :link_html => { 'data-toggle' => 'dropdown', :class => 'dropdown-toggle' } do |sub_nav|
      sub_nav.dom_class = "dropdown-menu"
      sub_nav.item :l2, '', '' do |l3|
        l3.dom_id = "about_section"
        l3.item :history, 'History', '/history'
        l3.item :campus, 'Campus', '/campus'
        l3.item :dean, 'Dean Palan', '/dean_palan'
        l3.item :accreditation, 'Accreditation', '/accreditation'
        l3.item :fastfacts, 'Fast Facts', '/fast_facts'
      end
    end
    primary.item :academics, 'Academics', '/academics', :html => {:class => 'dropdown mega-menu'}, :link_html => {:class => 'dropdown-toggle', 'data-toggle' => 'dropdown' } do |sub_nav|
      sub_nav.dom_class = "dropdown-menu"
      sub_nav.item :departments, '', '', :html => {:id => 'dept'} do |l3|
        l3.dom_id = "departments"
        l3.item :departments, 'Departments', '#'
        l3.item :accountancy, 'Accountancy', '/accountancy'
        l3.item :efls, 'Economics, Finance, & Legal Studies', '/efls'
        l3.item :generalbusiness, 'General Business', '/general_business'
        l3.item :ism, 'Information Systems, Statistics and Management Science', '/ism'
        l3.item :mgt, 'Management', '/management'
        l3.item :marketing, 'Marketing', '/marketing'
      end
      sub_nav.item :l3, '', '', :html => {:id => 'prog'} do |l3|
        l3.dom_id = "list-unstyled col-md-4b"
        l3.item :programs, 'Programs', '#'
        l3.item :ethics, 'Ethics Program', '/programs/ethics'
        l3.item :sales, 'Sales', '/programs/sales'
        l3.item :culverhouseconnections, 'Culverhouse Connections', '/programs/culverhouse_connectinos'
        l3.item :facultyscholars, 'Faculty Scholars', '/programs/faculty_scholars'
        l3.item :globalbusiness, 'Global Business & Study Abroad', '/programs/global_business'
        l3.item :mis, 'Management Inforamtion Systems', '/programs/mis'
        l3.item :businesshonors, 'Business Honors Program', '/programs/business_honors'
        l3.item :lift, 'Culverhouse LIFT', '/programs/lift'
      end
      sub_nav.item :l4, '', '' do |l3|
        l3.dom_id = "list-unstyled col-md-4c"
        l3.item :majors, 'Majors', '#'
        l3.item :accountancymajor, 'Accountancy', '/majors/accounting'
        l3.item :economicsmajor, 'Economics', '/majors/economics'
        l3.item :financemajor, 'Finance', '/majors/finance'
        l3.item :mismajor, 'Management Information Systems', '/majors/mis'
        l3.item :operationsmanagementmajor, 'Operations Management', '/majors/operations_management'
        l3.item :generalbusinessmajor, 'General Business', '/majors/general_business'
        l3.item :managementmajor, 'Management', '/majors/management'
        l3.item :marketingmajor, 'Marketing', '/majors/marketing'
      end
    end
    primary.item :graduates, 'Graduate Programs', '/academics', :html => {:class => 'dropdown mega-menu-full'}, :link_html => {:class => 'dropdown-toggle', 'data-toggle' => 'dropdown' } do |sub_nav|
      sub_nav.dom_class = "dropdown-menu"
      sub_nav.item :l5, '', '' do |l3|
        l3.dom_id = "list-unstyled col-md-3a"
        l3.item :masters, 'Masters', '#'
        l3.item :mastersappliedstatistics, 'Masters of Science in Applied Statistics', '/graduates/masters/applied_statistics'
        l3.item :mastertaxaccounting, 'Master of Tax Accounting', '/graduates/masters/tax_accounting'
        l3.item :masteraccountancy, 'Master of Accountancy', '/graduates/masters/accountancy'
        l3.item :mastereconomics, 'Master of Arts in Economics', '/graduates/masters/economics'
        l3.item :masterfinance, 'Master of Science in Finance', '/graduates/masters/finance'
        l3.item :mastermarketing, 'Master of Science in Marketing', '/graduates/masters/marketing'
        l3.item :masteroperationsmanagement, 'Master of Science in Operations Management', '/graduates/masters/operations_management'
      end
      sub_nav.item :l6, '', '' do |l3|
        l3.dom_id = "list-unstyled col-md-3b"
        l3.item :onlinemasters, 'Online Masters', '#'
        l3.item :onlinemastersmanagement, 'Masters of Science in Applied Statistics', '/graduates/online_masters/applied_statistics'
        l3.item :onlinemastersoperationsmanagement, 'Masters of Science in Operations Management', '/graduates/online_masters/operations_management'
        l3.item :onlinemastersmarketinganalytics, 'Masters of Science in Marketing with Analytics Specialization', '/graduates/online_masters/marketing_analytics'
      end
      sub_nav.item :l7, '', '' do |l3|
        l3.dom_id = "list-unstyled col-md-3c"
        l3.item :phd, 'PhD', '#'
        l3.item :phdfinance, 'Finance', '/graduates/phd/finance'
        l3.item :phdeconomics, 'Economics', '/graduates/phd/economics'
        l3.item :phdaccounting, 'Accounting', '/graduates/phd/accounting'
        l3.item :phdappliedstatistics, 'Applied Statistics', '/graduates/phd/applied_statistics'
        l3.item :phdmarketing, 'Marketing', '/graduates/phd/marketing'
        l3.item :phdmanagement, 'Management', '/graduates/phd/management'
        l3.item :phdoperationsmanagement, 'Operations Management', '/graduates/phd/operations_management'
      end
      sub_nav.item :l8, '', '' do |l3|
        l3.dom_id = "list-unstyled col-md-3d"
        l3.item :emba, 'EMBA', '/graduates/emba'
        l3.item :mba, 'MBA', '/graduates/mba'
        l3.item :stempath, 'STEM Path to the MBA', '/graduates/stem_path_to_the_mba'
        l3.item :createpath, 'CREATE Path to the MBA', '/graduates/create_path_to_the_mba'
      end
    end
    primary.item :news, 'News', '/news', :html => {:class => 'dropdown mega-menu'}, :link_html => {:class => 'dropdown-toggle', 'data-toggle' => 'dropdown' } do |sub_nav|
      sub_nav.dom_class = "dropdown-menu"
      sub_nav.item :l9, '', '' do |l3|
        l3.dom_id = "list-unstyled col-md-12a"
        l3.item :events, 'Events', '/events'
      end
    end
    primary.item :studentservices, 'Student Services', '/students', :html => {:class => 'dropdown mega-menu'}, :link_html => {:class => 'dropdown-toggle', 'data-toggle' => 'dropdown' } do |sub_nav|
      sub_nav.dom_class = "dropdown-menu"
      sub_nav.item :l10, '', '' do |l3|
        l3.dom_id = "list-unstyled col-md-6a"
        l3.item :studentscareercenter, 'Career Center at Culverhouse', '/students/career_center'
        l3.item :studentsadvising, 'Advising', '/students/advising'
        l3.item :studentsgetinvolved, 'Get Involved', '/students/get_involved'
        l3.item :studentstransfers, 'Transfers', '/students/transfers'
        l3.item :studentsgraduation, 'Graduation', '/students/graduation'
        l3.item :studentseducationabroad, 'Education Abroad', '/students/education_abroad'
      end
      sub_nav.item :l11, '', '' do |l3|
        l3.dom_id = "list-unstyled col-md-6b"
        l3.item :studentsadmissions, 'Admissions', '/students/admissions'
        l3.item :studentsapplicaitonrequirements, 'Application Requirements', '/students/application_requirements'
        l3.item :studentsfinancialaid, 'Financial Aid', '/students/financial_aid'
        l3.item :studentshousing, 'Housing', '/students/housing'
        l3.item :studentsscholarships, 'Scholarships', '/students/scholarships'
      end
    end
    primary.item :centers, 'Research & Outreach', '/centers', :html => {:class => 'dropdown mega-menu-full'}, :link_html => {:class => 'dropdown-toggle', 'data-toggle' => 'dropdown' }do |sub_nav|
      sub_nav.dom_class = "dropdown-menu"
      sub_nav.item :l12, '', '' do |l3|
        l3.dom_id = "list-unstyled col-md-6c"
        l3.item :centers, 'Alabama Center for Real Estate', '/centers/alabama_center_for_real_estate'
        l3.item :centers, 'Alabama Center for Insurance Information and Research', '/centers/alabama_center_for_insurance_information_and_research'
        l3.item :centers, 'Alabama Entrepreneurship Institute', '/centers/alabama_entrepreneurship_institute'
        l3.item :centers, 'Alabama Productivity Center', '/centers/alabama_productivity_center'
        l3.item :centers, 'Business Analytics Lab', '/centers/business_analytics_lab'
      end
      sub_nav.item :l13, '', '' do |l3|
        l3.dom_id = "list-unstyled col-md-6d"
        l3.item :centers, 'Center for Business and Economic Research', '/centers/center_for_business_and_economic_research'
        l3.item :centers, 'Culverhouse LIFT', '/centers/culverhouse_lift'
        l3.item :centers, 'Statistics Research and Consulting Laboratory', '/centers/statistics_research_and_consulting_laboratory'
      end
    end
  end
end