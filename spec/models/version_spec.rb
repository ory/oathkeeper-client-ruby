=begin
#ORY Oathkeeper

#ORY Oathkeeper is a reverse proxy that checks the HTTP Authorization for validity against a set of rules. This service uses Hydra to validate access tokens and policies.

The version of the OpenAPI document: v0.40.8
Contact: hi@ory.am
Generated by: https://openapi-generator.tech
Generator version: 7.7.0

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for OryOathkeeperClient::Version
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe OryOathkeeperClient::Version do
  let(:instance) { OryOathkeeperClient::Version.new }

  describe 'test an instance of Version' do
    it 'should create an instance of Version' do
      # uncomment below to test the instance creation
      #expect(instance).to be_instance_of(OryOathkeeperClient::Version)
    end
  end

  describe 'test attribute "version"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
