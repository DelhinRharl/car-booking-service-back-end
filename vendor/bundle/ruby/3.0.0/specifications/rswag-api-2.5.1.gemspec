# -*- encoding: utf-8 -*-
# stub: rswag-api 2.5.1 ruby lib

Gem::Specification.new do |s|
  s.name = "rswag-api".freeze
  s.version = "2.5.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Richie Morris".freeze, "Greg Myers".freeze, "Jay Danielian".freeze]
  s.date = "2022-02-10"
  s.description = "Open up your API to the phenomenal OpenAPI ecosystem by exposing OpenAPI files, that describe your service, as JSON endpoints. More about the OpenAPI initiative here: http://spec.openapis.org/".freeze
  s.email = ["domaindrivendev@gmail.com".freeze]
  s.homepage = "https://github.com/rswag/rswag".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.2.22".freeze
  s.summary = "A Rails Engine that exposes OpenAPI (formerly called Swagger) files as JSON endpoints".freeze

  s.installed_by_version = "3.2.22" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<railties>.freeze, [">= 3.1", "< 7.1"])
  else
    s.add_dependency(%q<railties>.freeze, [">= 3.1", "< 7.1"])
  end
end
