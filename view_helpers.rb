module ViewHelpers

  def javascripts_dir
    base_folder = Compass.configuration.javascripts_dir if defined? Compass
    base_folder ||= "javascripts"
  end

  def pages
    [
      {:name => 'About', :id => 'about'},
      {:name => 'Rules', :id => 'rules'},
      {:name => 'Schedule', :id => 'schedule'},
      {:name => 'Sponsor', :id => 'sponsor'},
      {:name => 'Staff', :id => 'staff'}
    ]
  end

end
