$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "engrave/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "engrave"
  s.version     = Engrave::VERSION
  s.authors     = ["Jeff McFadden"]
  s.email       = ["jeff.mcfadden@gmail.com"]
  s.homepage    = "https://www.github.com/jeffmcfadden/engrave"
  s.summary     = "Yet another Ruby blog engine."
  s.description = "Yet another Ruby blog engine."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.3"
  s.add_dependency "kramdown"
  s.add_dependency "friendly_id", "~> 4.0.1"  
end
