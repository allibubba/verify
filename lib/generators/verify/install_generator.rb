require 'rails/generators'
require 'rails/generators/migration'
require 'active_record'
require 'rails/generators/active_record'
require 'generators/verify/migration'

module Verify
  module Generators
    class InstallGenerator < Rails::Generators::Base
      include Rails::Generators::Migration
      extend Verify::Generators::Migration

      source_root File.expand_path("../templates", __FILE__)

      desc "Creates an initializer to set required parameters"
      def copy_initializer
        print "Creating new initializer"
        template "initializer.rb", "config/initializers/verify.rb"
      end
      desc "Create migration for verification model"
      def copy_migration
        migration_template 'install.rb', 'db/migrate/install_verify.rb'
      end

    end
  end
end
