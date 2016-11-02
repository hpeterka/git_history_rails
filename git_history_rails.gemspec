$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "git_history_rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "git_history_rails"
  s.version     = GitHistoryRails::VERSION
  s.authors     = ["Jan Vítek"]
  s.email       = ["jan.vitek@virtualmaster.com"]
  s.homepage    = "http://github.com/jan-vitek/git_history_rails"
  s.summary     = "A simple and straightforward tool to visualize a git log in your rails application"
  s.description = "This gem prints your full commit history at /git_history. No need for configuration or any additional steps."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.0", ">=4.2.0"
  s.add_dependency "hamlit"
  s.add_dependency "git"

  s.add_development_dependency "sqlite3"
end
