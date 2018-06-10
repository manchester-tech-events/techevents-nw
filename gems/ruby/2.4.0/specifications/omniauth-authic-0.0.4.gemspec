# -*- encoding: utf-8 -*-
# stub: omniauth-authic 0.0.4 ruby lib

Gem::Specification.new do |s|
  s.name = "omniauth-authic".freeze
  s.version = "0.0.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Authic".freeze]
  s.date = "2012-11-16"
  s.description = "An Omniauth strategy to integrate your application with Authic".freeze
  s.email = ["support@authic.com".freeze]
  s.homepage = "https://github.com/authic/omniauth-authic".freeze
  s.rubyforge_project = "omniauth-authic".freeze
  s.rubygems_version = "2.6.12".freeze
  s.summary = "Omniauth plugin for the Authic service".freeze

  s.installed_by_version = "2.6.12" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<omniauth-oauth2>.freeze, [">= 1.0.2"])
      s.add_development_dependency(%q<minitest>.freeze, [">= 0"])
      s.add_development_dependency(%q<mocha>.freeze, [">= 0"])
    else
      s.add_dependency(%q<omniauth-oauth2>.freeze, [">= 1.0.2"])
      s.add_dependency(%q<minitest>.freeze, [">= 0"])
      s.add_dependency(%q<mocha>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<omniauth-oauth2>.freeze, [">= 1.0.2"])
    s.add_dependency(%q<minitest>.freeze, [">= 0"])
    s.add_dependency(%q<mocha>.freeze, [">= 0"])
  end
end
