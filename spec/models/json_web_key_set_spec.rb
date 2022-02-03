=begin
#ORY Oathkeeper

#ORY Oathkeeper is a reverse proxy that checks the HTTP Authorization for validity against a set of rules. This service uses Hydra to validate access tokens and policies.

The version of the OpenAPI document: v0.38.18-beta.1
Contact: hi@ory.am
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.2.1

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for OryOathkeeperClient::JsonWebKeySet
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe OryOathkeeperClient::JsonWebKeySet do
  let(:instance) { OryOathkeeperClient::JsonWebKeySet.new }

  describe 'test an instance of JsonWebKeySet' do
    it 'should create an instance of JsonWebKeySet' do
      expect(instance).to be_instance_of(OryOathkeeperClient::JsonWebKeySet)
    end
  end
  describe 'test attribute "keys"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
