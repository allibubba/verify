require 'rails/generators/base'

module Verify
  module Generators
    class InstallGenerator < Rails::Generators::Base

      source_root File.expand_path("../../templates/initializers", __FILE__)
      desc "Creates an initializer to set required parameters"
      def copy_initializer
        print "Creating new initializer"
        template "verify.rb", "config/initializers/verify.rb"
      end
    end
  end
end
