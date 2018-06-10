# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "omniauth-authic/version"

Gem::Specification.new do |s|
  s.name        = "omniauth-authic"
  s.version     = Omniauth::Authic::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Authic"]
  s.email       = ["support@authic.com"]
  s.homepage    = "https://github.com/authic/omniauth-authic"
  s.summary     = %q{Omniauth plugin for the Authic service}
  s.description = %q{An Omniauth strategy to integrate your application with Authic}

  s.rubyforge_project = "omniauth-authic"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  
  s.add_runtime_dependency 'omniauth-oauth2', '>= 1.0.2'
  s.add_development_dependency 'minitest'
  s.add_development_dependency 'mocha'
end
