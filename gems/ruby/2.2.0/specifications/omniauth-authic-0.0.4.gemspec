# -*- encoding: utf-8 -*-
# stub: omniauth-authic 0.0.4 ruby lib

Gem::Specification.new do |s|
  s.name = "omniauth-authic"
  s.version = "0.0.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Authic"]
  s.date = "2012-11-16"
  s.description = "An Omniauth strategy to integrate your application with Authic"
  s.email = ["support@authic.com"]
  s.homepage = "https://github.com/authic/omniauth-authic"
  s.rubyforge_project = "omniauth-authic"
  s.rubygems_version = "2.4.5"
  s.summary = "Omniauth plugin for the Authic service"

  s.installed_by_version = "2.4.5" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<omniauth-oauth2>, [">= 1.0.2"])
      s.add_development_dependency(%q<minitest>, [">= 0"])
      s.add_development_dependency(%q<mocha>, [">= 0"])
    else
      s.add_dependency(%q<omniauth-oauth2>, [">= 1.0.2"])
      s.add_dependency(%q<minitest>, [">= 0"])
      s.add_dependency(%q<mocha>, [">= 0"])
    end
  else
    s.add_dependency(%q<omniauth-oauth2>, [">= 1.0.2"])
    s.add_dependency(%q<minitest>, [">= 0"])
    s.add_dependency(%q<mocha>, [">= 0"])
  end
end
