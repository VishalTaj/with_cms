$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "with_cms/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "with_cms"
  s.version     = WithCms::VERSION
  s.authors     = ["Vishal Taj PM"]
  s.email       = ["getvishalonline@gmail.com"]
  s.homepage    = ""
  s.summary     = "Summary of WithCms."
  s.description = "Description of WithCms."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.4"
  s.add_dependency "jquery-rails"

  s.add_development_dependency "sqlite3"
end
