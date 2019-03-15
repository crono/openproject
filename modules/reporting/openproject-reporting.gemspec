$:.push File.expand_path("../lib", __FILE__)
$:.push File.expand_path("../../lib", __dir__)

# Maintain your gem's version:
require "open_project/reporting/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "openproject-reporting"
  s.version     = '1.0.0+bundled'
  s.authors     = "OpenProject GmbH"
  s.email       = "info@openproject.com"
  s.homepage    = "https://community.openproject.org/projects/plugin-reporting"
  s.summary     = "OpenProject Reporting"
  s.description = "This plugin allows creating custom cost reports with filtering and grouping created by the OpenProject Costs plugin"

  s.files       = Dir["{app,config,db,lib,doc}/**/*", "README.md"]
  s.test_files  = Dir["spec/**/*"]

  s.add_dependency "reporting_engine"
  s.add_dependency "openproject-costs"

  s.add_dependency 'jquery-tablesorter', '~> 1.25.5'

  s.add_development_dependency "factory_girl_rails", "~> 4.0"
end
