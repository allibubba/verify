require 'verify/version'
require 'net/http'
require 'uri'

module Verify

  def initialize
    print "Verify Initialized"
  end

  mattr_accessor :base_url
  @@base_url = nil

  mattr_accessor :client_id
  @@client_id = nil

  mattr_accessor :client_secret
  @@client_secret = nil
end
