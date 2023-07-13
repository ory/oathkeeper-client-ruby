=begin
#ORY Oathkeeper

#ORY Oathkeeper is a reverse proxy that checks the HTTP Authorization for validity against a set of rules. This service uses Hydra to validate access tokens and policies.

The version of the OpenAPI document: v0.40.4
Contact: hi@ory.am
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.1

=end

require 'cgi'

module OryOathkeeperClient
  class ApiApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Access Control Decision API
    # > This endpoint works with all HTTP Methods (GET, POST, PUT, ...) and matches every path prefixed with /decisions.  This endpoint mirrors the proxy capability of ORY Oathkeeper's proxy functionality but instead of forwarding the request to the upstream server, returns 200 (request should be allowed), 401 (unauthorized), or 403 (forbidden) status codes. This endpoint can be used to integrate with other API Proxies like Ambassador, Kong, Envoy, and many more.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def decisions(opts = {})
      decisions_with_http_info(opts)
      nil
    end

    # Access Control Decision API
    # &gt; This endpoint works with all HTTP Methods (GET, POST, PUT, ...) and matches every path prefixed with /decisions.  This endpoint mirrors the proxy capability of ORY Oathkeeper&#39;s proxy functionality but instead of forwarding the request to the upstream server, returns 200 (request should be allowed), 401 (unauthorized), or 403 (forbidden) status codes. This endpoint can be used to integrate with other API Proxies like Ambassador, Kong, Envoy, and many more.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def decisions_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ApiApi.decisions ...'
      end
      # resource path
      local_var_path = '/decisions'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"ApiApi.decisions",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApiApi#decisions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a Rule
    # Use this method to retrieve a rule from the storage. If it does not exist you will receive a 404 error.
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Rule]
    def get_rule(id, opts = {})
      data, _status_code, _headers = get_rule_with_http_info(id, opts)
      data
    end

    # Retrieve a Rule
    # Use this method to retrieve a rule from the storage. If it does not exist you will receive a 404 error.
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Rule, Integer, Hash)>] Rule data, response status code and response headers
    def get_rule_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ApiApi.get_rule ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ApiApi.get_rule"
      end
      # resource path
      local_var_path = '/rules/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Rule'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"ApiApi.get_rule",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApiApi#get_rule\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Lists Cryptographic Keys
    # This endpoint returns cryptographic keys that are required to, for example, verify signatures of ID Tokens.
    # @param [Hash] opts the optional parameters
    # @return [JsonWebKeySet]
    def get_well_known_json_web_keys(opts = {})
      data, _status_code, _headers = get_well_known_json_web_keys_with_http_info(opts)
      data
    end

    # Lists Cryptographic Keys
    # This endpoint returns cryptographic keys that are required to, for example, verify signatures of ID Tokens.
    # @param [Hash] opts the optional parameters
    # @return [Array<(JsonWebKeySet, Integer, Hash)>] JsonWebKeySet data, response status code and response headers
    def get_well_known_json_web_keys_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ApiApi.get_well_known_json_web_keys ...'
      end
      # resource path
      local_var_path = '/.well-known/jwks.json'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'JsonWebKeySet'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"ApiApi.get_well_known_json_web_keys",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApiApi#get_well_known_json_web_keys\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List All Rules
    # This method returns an array of all rules that are stored in the backend. This is useful if you want to get a full view of what rules you have currently in place.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit The maximum amount of rules returned.
    # @option opts [Integer] :offset The offset from where to start looking.
    # @return [Array<Rule>]
    def list_rules(opts = {})
      data, _status_code, _headers = list_rules_with_http_info(opts)
      data
    end

    # List All Rules
    # This method returns an array of all rules that are stored in the backend. This is useful if you want to get a full view of what rules you have currently in place.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit The maximum amount of rules returned.
    # @option opts [Integer] :offset The offset from where to start looking.
    # @return [Array<(Array<Rule>, Integer, Hash)>] Array<Rule> data, response status code and response headers
    def list_rules_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ApiApi.list_rules ...'
      end
      # resource path
      local_var_path = '/rules'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<Rule>'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"ApiApi.list_rules",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApiApi#list_rules\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
