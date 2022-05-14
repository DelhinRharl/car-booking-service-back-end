# -*- encoding: utf-8 -*-
# stub: rswag-specs 2.5.1 ruby lib

Gem::Specification.new do |s|
  s.name = "rswag-specs".freeze
  s.version = "2.5.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Richie Morris".freeze, "Greg Myers".freeze, "Jay Danielian".freeze]
  s.date = "2022-02-10"
  s.description = "Simplify API integration testing with a succinct rspec DSL and generate OpenAPI specification files directly from your rspecs. More about the OpenAPI initiative here: http://spec.openapis.org/".freeze
  s.email = ["domaindrivendev@gmail.com".freeze]
  s.homepage = "https://github.com/rswag/rswag".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.2.22".freeze
  s.summary = "An OpenAPI-based (formerly called Swagger) DSL for rspec-rails & accompanying rake task for generating OpenAPI specification files".freeze

  s.installed_by_version = "3.2.22" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<activesupport>.freeze, [">= 3.1", "< 7.1"])
    s.add_runtime_dependency(%q<railties>.freeze, [">= 3.1", "< 7.1"])
    s.add_runtime_dependency(%q<json-schema>.freeze, ["~> 2.2"])
  else
    s.add_dependency(%q<activesupport>.freeze, [">= 3.1", "< 7.1"])
    s.add_dependency(%q<railties>.freeze, [">= 3.1", "< 7.1"])
    s.add_dependency(%q<json-schema>.freeze, ["~> 2.2"])
  end
end
