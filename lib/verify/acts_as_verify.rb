module Verify
  module ActsAsVerify

    class Verification < ActiveRecord::Base
    end

    extend ActiveSupport::Concern

    mattr_accessor :base_url
    # @@base_url = nil

    mattr_accessor :client_id
    # @@client_id = nil

    mattr_accessor :client_secret
    # @@client_secret = nil

    def self.setup
      yield self
    end


    included do
    end

    module ClassMethods
      def acts_as_verify(options = {})
        has_many :verifications, :class_name => 'Verify:ActsAsVerify'
        include Verify::ActsAsVerify::LocalInstanceMethods
      end
    end

    module LocalInstanceMethods

      def cadidate
        puts self
        @url_base = 'https://api.accuratebackground.com/v3/'
        self_attributes = validatable_attributes()
        self.create_verification.create
        puts "------------------"
        puts "ok ok ok ok"
        puts self_attributes
        puts "------------------"
      end

      private
      def validatable_attributes
        {
          "firstName" => self.firstname ,
          "lastName" => self.lastname,
          "phone" => self.phone,
          "email" => self.email,
          "dateOfBirth" => self.dateofbirth,
          "ssn" => self.ssn,
          "address" => self.address,
          "city" => self.city,
          "region" => self.region,
          "postalCode" => self.postalcode,
          "country" => self.country
        }
      end
    end

  end

end
