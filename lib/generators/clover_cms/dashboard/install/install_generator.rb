require 'rails/generators/migration'

module CloverCms
  module Dashboard
    module Generators
      class InstallGenerator < Rails::Generators::Base
        source_root File.expand_path('../../templates', __FILE__)
        desc "Copies clovercms-dashboard sass to current project"
        argument :path, :required => false, :default => :sass, :desc => "The path inside app to put your sass"

        def generate_sass
          directory 'sass', "app/#{path || :sass}"
        end
      end
    end
  end
end