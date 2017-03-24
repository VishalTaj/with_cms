$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "with_cms/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "with_cms"
  s.version     = WithCms::VERSION
  s.authors     = ["Vishal Taj"]
  s.email       = ["vishal@bullfin.ch"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of WithCms."
  s.description = "TODO: Description of WithCms."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.7.1"

  s.add_development_dependency "sqlite3"
end
