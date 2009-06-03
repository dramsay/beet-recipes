file_location_960 = "http://github.com/nathansmith/960-grid-system/raw/cba77b87b377e7259dd4de3b15483087f081dfea/code/css/960.css"
file_location_reset = "http://github.com/nathansmith/960-grid-system/raw/cba77b87b377e7259dd4de3b15483087f081dfea/code/css/reset.css"
file_location_text = "http://github.com/nathansmith/960-grid-system/raw/cba77b87b377e7259dd4de3b15483087f081dfea/code/css/text.css"
unless File.exists?('public/stylesheets/960.css')
  begin
    file 'public/stylesheets/960.css' do
      open(file_location_960).read
    end
  rescue
    "Couldn't load #{file_location_960}"
  end
end
unless File.exists?('public/stylesheets/reset.css')
  begin
    file 'public/stylesheets/reset.css' do
      open(file_location_reset).read
    end
  rescue
    "Couldn't load #{file_location_reset}"
  end
end
unless File.exists?('public/stylesheets/text.css')
  begin
    file 'public/stylesheets/text.css' do
      open(file_location_text).read
    end
  rescue
    "Couldn't load #{file_location_text}"
  end
end

