# require 'verify/version'
# require 'net/http'
# require 'uri'
#
# class Verify
#
#   mattr_accessor :base_url
#   @@base_url = Verify.base_url
#
#   mattr_accessor :client_id
#   @@client_id = Verify.client_id
#
#   mattr_accessor :client_secret
#   @@client_secret = Verify.client_secret
#
#   def self.setup
#     yield self
#   end
#
#
#     def self.demo
#       puts "demo called"
#     end
#
#     def test
#       puts "test called"
#     end
#
#     # require user params
#     def candidate
#       @uri = URI.parse(build_url candidate)
#       puts "==============================="
#       puts @uri
#       puts "==============================="
#       @request = Net::HTTP::Post.new(@uri)
#       @request.basic_auth(ENV['ACCURATE_CLIENT_ID'], ENV['ACCURATE_CLIENT_SECRET'])
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
#       make
#     end
#
#
#     def build_url segment
#       base_url = (Verify.base_url[-1] == '/') ? Verify.base_url : Verify.base_url + '/'
#       base_url << segment
#     end
#
#     def make
#       response = Net::HTTP.start(@uri.hostname, @uri.port, @req_options) do |http| 
#         http.request(@request)
#       end
#
#       puts '.............................'
#       p @request
#       puts JSON.parse(response.body)
#       puts '.............................'
#     end
#
# end
#
