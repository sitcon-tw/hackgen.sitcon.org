module ViewHelpers

  def javascripts_dir
    base_folder = Compass.configuration.javascripts_dir if defined? Compass
    base_folder ||= "javascripts"
  end

end
