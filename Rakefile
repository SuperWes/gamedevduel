require 'bundler'

task :default => :serve

desc "Build the site with Jekyll"
task :build_site do
  jekyll('build')
end

desc "For Testing, just build the project and serve the site to localhost:4000"
task :serve => [:serve_site]

desc "Build the site"
task :build => [:build_site]

desc "Just serves the site, does not rebuild the project"
task :serve_site do
  jekyll('serve')
end

def jekyll(opts = '')
  sh 'jekyll ' + opts
end
