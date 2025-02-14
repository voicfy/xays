# -*- encoding: utf-8 -*-
# stub: elasticsearch-transport 0.4.11 ruby lib

Gem::Specification.new do |s|
  s.name = "elasticsearch-transport".freeze
  s.version = "0.4.11"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Karel Minarik".freeze]
  s.date = "2014-02-11"
  s.description = "Ruby client for Elasticsearch. See the `elasticsearch` gem for full integration.\n".freeze
  s.email = ["karel.minarik@elasticsearch.org".freeze]
  s.extra_rdoc_files = ["README.md".freeze, "LICENSE.txt".freeze]
  s.files = ["LICENSE.txt".freeze, "README.md".freeze]
  s.homepage = "https://github.com/elasticsearch/elasticsearch-ruby/tree/master/elasticsearch-transport".freeze
  s.licenses = ["Apache 2".freeze]
  s.rdoc_options = ["--charset=UTF-8".freeze]
  s.rubygems_version = "2.7.3".freeze
  s.summary = "Ruby client for Elasticsearch.".freeze

  s.installed_by_version = "2.7.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<multi_json>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<faraday>.freeze, [">= 0"])
      s.add_development_dependency(%q<bundler>.freeze, ["> 1"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<elasticsearch-extensions>.freeze, [">= 0"])
      s.add_development_dependency(%q<ansi>.freeze, [">= 0"])
      s.add_development_dependency(%q<shoulda-context>.freeze, [">= 0"])
      s.add_development_dependency(%q<mocha>.freeze, [">= 0"])
      s.add_development_dependency(%q<turn>.freeze, [">= 0"])
      s.add_development_dependency(%q<yard>.freeze, [">= 0"])
      s.add_development_dependency(%q<pry>.freeze, [">= 0"])
      s.add_development_dependency(%q<ci_reporter>.freeze, [">= 0"])
      s.add_development_dependency(%q<curb>.freeze, [">= 0"])
      s.add_development_dependency(%q<typhoeus>.freeze, ["~> 0.6"])
      s.add_development_dependency(%q<ruby-prof>.freeze, [">= 0"])
      s.add_development_dependency(%q<simplecov>.freeze, [">= 0"])
      s.add_development_dependency(%q<simplecov-rcov>.freeze, [">= 0"])
      s.add_development_dependency(%q<cane>.freeze, [">= 0"])
      s.add_development_dependency(%q<require-prof>.freeze, [">= 0"])
      s.add_development_dependency(%q<coveralls>.freeze, [">= 0"])
    else
      s.add_dependency(%q<multi_json>.freeze, [">= 0"])
      s.add_dependency(%q<faraday>.freeze, [">= 0"])
      s.add_dependency(%q<bundler>.freeze, ["> 1"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<elasticsearch-extensions>.freeze, [">= 0"])
      s.add_dependency(%q<ansi>.freeze, [">= 0"])
      s.add_dependency(%q<shoulda-context>.freeze, [">= 0"])
      s.add_dependency(%q<mocha>.freeze, [">= 0"])
      s.add_dependency(%q<turn>.freeze, [">= 0"])
      s.add_dependency(%q<yard>.freeze, [">= 0"])
      s.add_dependency(%q<pry>.freeze, [">= 0"])
      s.add_dependency(%q<ci_reporter>.freeze, [">= 0"])
      s.add_dependency(%q<curb>.freeze, [">= 0"])
      s.add_dependency(%q<typhoeus>.freeze, ["~> 0.6"])
      s.add_dependency(%q<ruby-prof>.freeze, [">= 0"])
      s.add_dependency(%q<simplecov>.freeze, [">= 0"])
      s.add_dependency(%q<simplecov-rcov>.freeze, [">= 0"])
      s.add_dependency(%q<cane>.freeze, [">= 0"])
      s.add_dependency(%q<require-prof>.freeze, [">= 0"])
      s.add_dependency(%q<coveralls>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<multi_json>.freeze, [">= 0"])
    s.add_dependency(%q<faraday>.freeze, [">= 0"])
    s.add_dependency(%q<bundler>.freeze, ["> 1"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<elasticsearch-extensions>.freeze, [">= 0"])
    s.add_dependency(%q<ansi>.freeze, [">= 0"])
    s.add_dependency(%q<shoulda-context>.freeze, [">= 0"])
    s.add_dependency(%q<mocha>.freeze, [">= 0"])
    s.add_dependency(%q<turn>.freeze, [">= 0"])
    s.add_dependency(%q<yard>.freeze, [">= 0"])
    s.add_dependency(%q<pry>.freeze, [">= 0"])
    s.add_dependency(%q<ci_reporter>.freeze, [">= 0"])
    s.add_dependency(%q<curb>.freeze, [">= 0"])
    s.add_dependency(%q<typhoeus>.freeze, ["~> 0.6"])
    s.add_dependency(%q<ruby-prof>.freeze, [">= 0"])
    s.add_dependency(%q<simplecov>.freeze, [">= 0"])
    s.add_dependency(%q<simplecov-rcov>.freeze, [">= 0"])
    s.add_dependency(%q<cane>.freeze, [">= 0"])
    s.add_dependency(%q<require-prof>.freeze, [">= 0"])
    s.add_dependency(%q<coveralls>.freeze, [">= 0"])
  end
end
