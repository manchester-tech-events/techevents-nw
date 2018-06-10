# -*- encoding: utf-8 -*-
# stub: sinatra-assetpack 0.3.1 ruby lib

Gem::Specification.new do |s|
  s.name = "sinatra-assetpack".freeze
  s.version = "0.3.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Rico Sta. Cruz".freeze, "Jean-Philippe Doyle".freeze]
  s.cert_chain = ["-----BEGIN CERTIFICATE-----\nMIIDRjCCAi6gAwIBAgIBADANBgkqhkiG9w0BAQUFADBJMRswGQYDVQQDDBJqZWFu\ncGhpbGlwcGUuZG95bGUxFTATBgoJkiaJk/IsZAEZFgVnbWFpbDETMBEGCgmSJomT\n8ixkARkWA2NvbTAeFw0xMzAzMTEyMjM5MjNaFw0xNDAzMTEyMjM5MjNaMEkxGzAZ\nBgNVBAMMEmplYW5waGlsaXBwZS5kb3lsZTEVMBMGCgmSJomT8ixkARkWBWdtYWls\nMRMwEQYKCZImiZPyLGQBGRYDY29tMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIB\nCgKCAQEApQtzOyMoi48Pc0BRF++BXc2ulECpOypwYqnzIdbE5+iLownixYB3KkKm\nVxIlo9pYWIp5JR+Uphv/P9vKJAIjfldtlus6o8xFT0HujXyEMMbFMGHH01PvDYkx\nvnMw5O6YVdtbsKvjknB4JOcOmxQAeXBunLBJk0huOLALlDW38UZF3AKNVPpR+Gst\ngTZCIAPq22wB9I0HYfyCitjrMVK4jTHgjPjNNQn4BhuhkqEWr5JkVtipGCUFyl45\n2ISskOPckLW/qwCq4vyjVK6JIZb2Ei9DHtip44u7KjFEX5QdvHyu81xatMmtKvYn\nWWKZ/2HCdWRRiPSuHmBR/QlMlUN69QIDAQABozkwNzAJBgNVHRMEAjAAMB0GA1Ud\nDgQWBBQk1vhL7od7qZLEfBssQNqzht1wwDALBgNVHQ8EBAMCBLAwDQYJKoZIhvcN\nAQEFBQADggEBADglXYkTD1Btadr2ehKDOSATfLVeh9ThwZ6PeKP8bPWKOrHPbTN8\nAandvv6g6samg7p/viRwsE29MTAcfqCdFp8v35ase2PyiXrJ0QJP7r3CBo+nwGVO\nhybD84/vTA9CSBaFX2Xtj0dC5o6eW6/vWoVeJUcMNX/O/r8lRWn24WhFkEzW9n1R\n2CVeZs78AXWTyU0l0dyswpav0AczXg4UK3Y2M9oYyBmdfem6m614SOrOFBIGjmF4\nkzgF4O2OL+8O23we4E1LvfRn5gV77Dij6s9V4HHzMBuLwnNb8T+6lOnUWbtiIddD\ne8c8i7PlrzhVJ/8sXUJsCkyE8d2MyRyjlxM=\n-----END CERTIFICATE-----\n".freeze]
  s.date = "2013-08-01"
  s.description = "Package your assets for Sinatra.".freeze
  s.email = ["rico@sinefunc.com".freeze]
  s.homepage = "http://github.com/rstacruz/sinatra-assetpack".freeze
  s.licenses = ["MIT".freeze]
  s.post_install_message = "##################################################\n#  NOTE FOR UPGRADING FROM PRE-3.0.0 VERSION     #\n##################################################\n\nPlease note that sinatra-assetpack `img` helper method\nno more set the image width and height because this default\nbehavior is not desirable with most recent CSS techniques\nregarding high resolutions images for \"retina\" displays\nans \"responsive\" design CSS using for exemple width:100%.\n\n<img src=\"retina.jpg\" width=\"1200\" height=\"600\">\n\nIs now simply this (unless you explicity set them) :\n\n<img src=\"retina.jpg\">\n\nSee https://github.com/rstacruz/sinatra-assetpack/pull/121".freeze
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.2".freeze)
  s.rubygems_version = "2.6.12".freeze
  s.summary = "Asset packager for Sinatra.".freeze

  s.installed_by_version = "2.6.12" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<jsmin>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<rack-test>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<sinatra>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<tilt>.freeze, [">= 1.3.0"])
      s.add_development_dependency(%q<coffee-script>.freeze, [">= 0"])
      s.add_development_dependency(%q<haml>.freeze, [">= 0"])
      s.add_development_dependency(%q<less>.freeze, [">= 0"])
      s.add_development_dependency(%q<sass>.freeze, [">= 0"])
      s.add_development_dependency(%q<stylus>.freeze, [">= 0"])
      s.add_development_dependency(%q<uglifier>.freeze, [">= 0"])
      s.add_development_dependency(%q<yui-compressor>.freeze, [">= 0"])
    else
      s.add_dependency(%q<jsmin>.freeze, [">= 0"])
      s.add_dependency(%q<rack-test>.freeze, [">= 0"])
      s.add_dependency(%q<sinatra>.freeze, [">= 0"])
      s.add_dependency(%q<tilt>.freeze, [">= 1.3.0"])
      s.add_dependency(%q<coffee-script>.freeze, [">= 0"])
      s.add_dependency(%q<haml>.freeze, [">= 0"])
      s.add_dependency(%q<less>.freeze, [">= 0"])
      s.add_dependency(%q<sass>.freeze, [">= 0"])
      s.add_dependency(%q<stylus>.freeze, [">= 0"])
      s.add_dependency(%q<uglifier>.freeze, [">= 0"])
      s.add_dependency(%q<yui-compressor>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<jsmin>.freeze, [">= 0"])
    s.add_dependency(%q<rack-test>.freeze, [">= 0"])
    s.add_dependency(%q<sinatra>.freeze, [">= 0"])
    s.add_dependency(%q<tilt>.freeze, [">= 1.3.0"])
    s.add_dependency(%q<coffee-script>.freeze, [">= 0"])
    s.add_dependency(%q<haml>.freeze, [">= 0"])
    s.add_dependency(%q<less>.freeze, [">= 0"])
    s.add_dependency(%q<sass>.freeze, [">= 0"])
    s.add_dependency(%q<stylus>.freeze, [">= 0"])
    s.add_dependency(%q<uglifier>.freeze, [">= 0"])
    s.add_dependency(%q<yui-compressor>.freeze, [">= 0"])
  end
end
