require 'active_record'
require 'active_support'
require 'verify/core_ext'
require 'verify/acts_as_verify'

module Verify
end





# require 'verify/version'
# require 'net/http'
# require 'uri'
# require 'json'
# require 'pp'
# require "verify/models/verification.rb"
#
# require "active_record"
# require "kitchen/dish.rb"
# require "kitchen/cook.rb"
#
#
#
# module Verify
#   class Very < ActiveRecord::Base
#
#     has_one :verification, :dependent => :destroy
#
#     mattr_accessor :base_url
#     @@base_url = self.base_url
#
#     mattr_accessor :client_id
#     @@client_id = self.client_id
#
#     mattr_accessor :client_secret
#     @@client_secret = self.client_secret
#
#     def self.setup
#       yield self
#     end
#
#     def bonus
#       puts "BONUS"
#       puts self
#       puts self.class.name
#     end
#
#   end
#
# end



# module Verify
#   class Very < ::ActiveRecord::Base
#
#     # mattr_accessor :base_url
#     # @@base_url = self.base_url
#     #
#     # mattr_accessor :client_id
#     # @@client_id = self.client_id
#     #
#     # mattr_accessor :client_secret
#     # @@client_secret = self.client_secret
#
#     def self.setup
#       yield self
#     end
#
#
#     def test
#       puts self
#       puts self.class.name
#     end
#
#
#     def self.candidate
#       @uri = URI.parse(build_url :candidate)
#       @request = Net::HTTP::Post.new(@uri)
#       # @request.basic_auth(ENV['ACCURATE_CLIENT_ID'], ENV['ACCURATE_CLIENT_SECRET'])
#       @request.basic_auth('58b9d59e-c5b1-4769-a7aa-55d04f3ef74d', '3ae572d3-446d-4e80-bcfe-306dc8cf35ed')
#       @req_options = {
#         use_ssl: @uri.scheme == "https",
#       }
#       @request.set_form_data(
#         "firstName" => "bugs" ,
#         "lastName" => "bunny",
#         "phone" => "2063339999",
#         "email" => "bugs@bunny.com",
#         "dateOfBirth" => "1940-06-06",
#         "ssn" => "123-55-6666",
#         "address" => "4000 Warner Boulevard",
#         "city" => "Burbank",
#         "region" => "CA",
#         "postalCode" => "90210",
#         "country" => "US"
#       )
#       # response = make
#     end
#
#     def self.build_url segment
#       base_url = (Verify.base_url[-1] == '/') ? Verify.base_url : Verify.base_url + '/'
#       base_url << segment.to_s
#     end
#
#     private
#
#     def self.make
#       Net::HTTP.start(@uri.hostname, @uri.port, @req_options) do |http|
#         http.request(@request)
#       end
#     end
#
#   end
# end
