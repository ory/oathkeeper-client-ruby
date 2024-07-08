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

# Unit tests for OryOathkeeperClient::ApiApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ApiApi' do
  before do
    # run before each test
    @api_instance = OryOathkeeperClient::ApiApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ApiApi' do
    it 'should create an instance of ApiApi' do
      expect(@api_instance).to be_instance_of(OryOathkeeperClient::ApiApi)
    end
  end

  # unit tests for decisions
  # Access Control Decision API
  # &gt; This endpoint works with all HTTP Methods (GET, POST, PUT, ...) and matches every path prefixed with /decisions.  This endpoint mirrors the proxy capability of ORY Oathkeeper&#39;s proxy functionality but instead of forwarding the request to the upstream server, returns 200 (request should be allowed), 401 (unauthorized), or 403 (forbidden) status codes. This endpoint can be used to integrate with other API Proxies like Ambassador, Kong, Envoy, and many more.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'decisions test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_rule
  # Retrieve a Rule
  # Use this method to retrieve a rule from the storage. If it does not exist you will receive a 404 error.
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [Rule]
  describe 'get_rule test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_well_known_json_web_keys
  # Lists Cryptographic Keys
  # This endpoint returns cryptographic keys that are required to, for example, verify signatures of ID Tokens.
  # @param [Hash] opts the optional parameters
  # @return [JsonWebKeySet]
  describe 'get_well_known_json_web_keys test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_rules
  # List All Rules
  # This method returns an array of all rules that are stored in the backend. This is useful if you want to get a full view of what rules you have currently in place.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit The maximum amount of rules returned.
  # @option opts [Integer] :offset The offset from where to start looking.
  # @return [Array<Rule>]
  describe 'list_rules test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
