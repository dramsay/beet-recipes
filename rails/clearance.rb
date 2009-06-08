gem("thoughtbot-clearance", :lib => "clearance", :source  => "http://gems.github.com", :version => "0.6.6")

generate("clearance")
rake("db:migrate")

if yes?("Add Cucumber features? (yes/no)")
  generate("clearance_features")
  gem('webrat', :version => '= 0.4.4', :env => 'test')
  gem('cucumber', :version => '= 0.3.0', :env => 'test')
  gem('thoughtbot-factory_girl', :lib     => 'factory_girl', :source  => "http://gems.github.com", :version => '1.2.1', :env => 'test')
  run('sudo gem install nokogiri')
end

todo %Q(Define a HOST constant in your environment files. In config/environments/test.rb and config/environments/development.rb it can be:
        \n\n
        HOST = "localhost"
        \n\n
        In production.rb it must be the actual host your application is deployed to. The constant is used by mailers to generate URLs in emails.
        \n\n
        In config/environment.rb:
        \n\n
        DO_NOT_REPLY = "donotreply@example.com"
        \n\n
        Define root_url to something in your config/routes.rb:
        \n\n
        map.root :controller => 'home')