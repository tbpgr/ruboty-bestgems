require 'net/http'
require 'uri'
require 'json'

module BestgemsHelper
  def call_api(api_name)
    uri = URI.parse("http://bestgems.org/api/v1/gems/#{gem_name}/#{api_name}.json")
    https = Net::HTTP.new(uri.host, uri.port)
    response = https.start { https.get(uri.request_uri) }
    if response.code == '200'
      ret = JSON.parse(response.body).first
      format("gem name: #{gem_name}, date: %s, #{api_name}: %s", ret['date'], ret[api_name])
    else
      return "ERROR #{response.code}"
    end
  rescue => e
    format('Failed by %s', e.class.name)
  end

  def gem_name
    message[:gem_name]
  end
end
