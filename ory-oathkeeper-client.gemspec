# -*- encoding: utf-8 -*-

=begin
#ORY Oathkeeper

#ORY Oathkeeper is a reverse proxy that checks the HTTP Authorization for validity against a set of rules. This service uses Hydra to validate access tokens and policies.

The version of the OpenAPI document: v0.0.0-alpha.56
Contact: hi@ory.am
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.2.1

=end

$:.push File.expand_path("../lib", __FILE__)
require "ory-oathkeeper-client/version"

Gem::Specification.new do |s|
  s.name        = "ory-oathkeeper-client"
  s.version     = OryOathkeeperClient::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["ORY GmbH"]
  s.email       = ["opensource@ory.sh"]
  s.homepage    = "https://www.ory.sh"
  s.summary     = "ORY Oathkeeper Ruby Gem"
  s.description = "ORY Oathkeeper is a reverse proxy that checks the HTTP Authorization for validity against a set of rules. This service uses Hydra to validate access tokens and policies."
  s.license     = "Apache-2.0"
  s.required_ruby_version = ">= 2.4"

  s.add_runtime_dependency 'typhoeus', '~> 1.0', '>= 1.0.1'

  s.add_development_dependency 'rspec', '~> 3.6', '>= 3.6.0'

  s.files         = `find *`.split("\n").uniq.sort.select { |f| !f.empty? }
  s.test_files    = `find spec/*`.split("\n")
  s.executables   = []
  s.require_paths = ["lib"]
end
