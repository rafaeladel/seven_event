$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "seven_event/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "seven_event"
  s.version     = SevenEvent::VERSION
  s.authors     = ["rafael"]
  s.email       = ["rafael.adel20@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of SevenEvent."
  s.description = "TODO: Description of SevenEvent."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 4.2.1"
  s.add_dependency "seven_gallery"
  s.add_dependency "mysql2"

  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'capybara'
  s.add_development_dependency 'factory_girl_rails'
  s.add_development_dependency "sqlite3"
end
