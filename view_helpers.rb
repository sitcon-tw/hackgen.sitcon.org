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

  def get_json(path)
    d ||= JSON.parse(File.read(File.join(File.dirname(__FILE__), path)))
  end

  def schedule
    get_json('schedule.json')
  end

  def staff
    get_json('staff.json')
  end

  def sponsors
    get_json('sponsor.json')
  end

end
