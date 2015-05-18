# -*- encoding: utf-8 -*-
# stub: rack-ssl-enforcer 0.2.8 ruby lib

Gem::Specification.new do |s|
  s.name = "rack-ssl-enforcer"
  s.version = "0.2.8"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Tobias Matthies", "Thibaud Guillaume-Gentil"]
  s.date = "2014-07-18"
  s.description = "Rack::SslEnforcer is a simple Rack middleware to enforce ssl connections"
  s.email = ["tm@mit2m.d", "thibaud@thibaud.me"]
  s.homepage = "http://github.com/tobmatth/rack-ssl-enforcer"
  s.rubyforge_project = "rack-ssl-enforcer"
  s.rubygems_version = "2.4.5"
  s.summary = "A simple Rack middleware to enforce SSL"

  s.installed_by_version = "2.4.5" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>, ["~> 1.0"])
      s.add_development_dependency(%q<test-unit>, ["~> 2.3"])
      s.add_development_dependency(%q<shoulda>, ["~> 2.11.3"])
      s.add_development_dependency(%q<rack>, ["~> 1.2.0"])
      s.add_development_dependency(%q<rack-test>, ["~> 0.5.4"])
    else
      s.add_dependency(%q<bundler>, ["~> 1.0"])
      s.add_dependency(%q<test-unit>, ["~> 2.3"])
      s.add_dependency(%q<shoulda>, ["~> 2.11.3"])
      s.add_dependency(%q<rack>, ["~> 1.2.0"])
      s.add_dependency(%q<rack-test>, ["~> 0.5.4"])
    end
  else
    s.add_dependency(%q<bundler>, ["~> 1.0"])
    s.add_dependency(%q<test-unit>, ["~> 2.3"])
    s.add_dependency(%q<shoulda>, ["~> 2.11.3"])
    s.add_dependency(%q<rack>, ["~> 1.2.0"])
    s.add_dependency(%q<rack-test>, ["~> 0.5.4"])
  end
end
