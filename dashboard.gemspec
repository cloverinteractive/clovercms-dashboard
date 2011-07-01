# Provide a simple gemspec so you can easily use your enginex
# project in your rails apps through git.
Gem::Specification.new do |s|
  s.name        = "clovercms-dashboard"
  s.summary     = "Dashboard theme for Rails 3.x"
  s.author      = 'Enrique Vidal'
  s.email       = 'enrique@cloverinteractive.com'
  s.homepage    = 'http://github.com/cloverinteractive/clovercms-dashboard'
  s.description = "Dashboard look n' feel for Rails 3"
  s.files       = Dir["{app,lib,config}/**/*"] + ["MIT-LICENSE", "Rakefile", "Gemfile", "README.rdoc"]
  s.version     = "0.0.2"
end
