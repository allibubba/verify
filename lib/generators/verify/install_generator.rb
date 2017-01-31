require 'rails/generators/base'

module Verify
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("../../templates", __FILE__)
      desc "Creates an initializer to set required parameters"
      template "verify.rb", "config/initializers/verify.rb"
    end
  end
end
