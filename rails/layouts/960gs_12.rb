def write_layout
  file 'app/views/layouts/application.html.erb', <<-MARKUP
  <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
  <html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
      <head>
          <meta http-equiv="content-type" content="text/html; charset=utf-8" />
          <title></title>
          <link rel="stylesheet" type="text/css" media="all" href="stylesheets/reset.css" />
          <link rel="stylesheet" type="text/css" media="all" href="stylesheets/text.css" />
          <link rel="stylesheet" type="text/css" media="all" href="stylesheets/960.css" />
      </head>
      <body>
          <div class="container_12">
              <%= yield %>
          </div>
      </body>
  </html>
  MARKUP
end

if File.exists?('app/views/layouts/application.html.erb')
  if yes?("Overwrite existing application layout? (yes/no)")
    write_layout
  end
else
  write_layout
end