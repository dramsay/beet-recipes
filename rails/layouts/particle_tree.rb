def write_layout
  file 'app/views/layouts/application.html.erb', <<-MARKUP
  <-- copied from http://particletree.com/features/quick-start-your-design-with-xhtml-templates/ -->
  <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

  <html xmlns="http://www.w3.org/1999/xhtml">
      <head>
          <title></title>

          <!-- Meta Tags -->
          <meta http-equiv="content-type" content="application/xhtml+xml; charset=utf-8" />
          <meta name="robots" content="index, follow" />

          <meta name="description" content="" />
          <meta name="keywords" content="" />
          <meta name="author" content="" />

          <!-- Favicon -->
          <link rel="shortcut icon" href="" />

          <!-- CSS -->
          <link rel="stylesheet" href="" media="screen,projection" type="text/css" />
          <link rel="stylesheet" href="" media="print" type="text/css" />

          <!-- RSS -->
          <link rel="alternate" href="" title="RSS Feed" type="application/rss+xml" />

          <!-- JavaScript : Include and embedded version -->
          <script src="" type="text/javascript"></script>
      </head>
      <body>
         <div id="container">
             <div id="navigation">
             </div><!-- navigation -->
             <div id="primaryContent">
                 <%= yield %>
             </div><!-- primaryContent -->
             <div id="secondaryContent">
             </div><!-- secondaryContent -->
             <div id="footer">
             </div><!-- footer -->
             </div><!-- container -->
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