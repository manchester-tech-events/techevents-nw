# -*- encoding: utf-8 -*-
# stub: rack-ssl-enforcer 0.2.9 ruby lib

Gem::Specification.new do |s|
  s.name = "rack-ssl-enforcer".freeze
  s.version = "0.2.9"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Tobias Matthies".freeze, "Thibaud Guillaume-Gentil".freeze]
  s.date = "2015-07-22"
  s.description = "Rack::SslEnforcer is a simple Rack middleware to enforce ssl connections".freeze
  s.email = ["tm@mit2m.d".freeze, "thibaud@thibaud.me".freeze]
  s.homepage = "http://github.com/tobmatth/rack-ssl-enforcer".freeze
  s.rubyforge_project = "rack-ssl-enforcer".freeze
  s.rubygems_version = "2.6.12".freeze
  s.summary = "A simple Rack middleware to enforce SSL".freeze

  s.installed_by_version = "2.6.12" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.0"])
      s.add_development_dependency(%q<test-unit>.freeze, ["~> 2.3"])
      s.add_development_dependency(%q<shoulda>.freeze, ["~> 2.11.3"])
      s.add_development_dependency(%q<rack>.freeze, ["~> 1.2.0"])
      s.add_development_dependency(%q<rack-test>.freeze, ["~> 0.5.4"])
    else
      s.add_dependency(%q<bundler>.freeze, ["~> 1.0"])
      s.add_dependency(%q<test-unit>.freeze, ["~> 2.3"])
      s.add_dependency(%q<shoulda>.freeze, ["~> 2.11.3"])
      s.add_dependency(%q<rack>.freeze, ["~> 1.2.0"])
      s.add_dependency(%q<rack-test>.freeze, ["~> 0.5.4"])
    end
  else
    s.add_dependency(%q<bundler>.freeze, ["~> 1.0"])
    s.add_dependency(%q<test-unit>.freeze, ["~> 2.3"])
    s.add_dependency(%q<shoulda>.freeze, ["~> 2.11.3"])
    s.add_dependency(%q<rack>.freeze, ["~> 1.2.0"])
    s.add_dependency(%q<rack-test>.freeze, ["~> 0.5.4"])
  end
end
