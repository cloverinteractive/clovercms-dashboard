require 'rails/generators/migration'

module CloverCms
  module Dashboard
    module Generators
      class InstallGenerator < Rails::Generators::Base
        source_root File.expand_path('../templates', __FILE__)
        desc "Copies clovercms-dashboard sass to current project"
        argument      :path,            :type => :string,   :default => "stylesheets", :desc => "The path inside app to put your sass"
        class_option  :asset_pipeline,  :type =>  :boolean, :default => false,  :desc => "It sticks to the asset pipeline introduced in rails 3.1"

        def copy_sass
          if options.asset_pipeline?
            directory 'sass', "app/assets/stylesheets"
          else
            directory 'sass', "app/#{ path }"
          end
        end

        def copy_images
          if options.asset_pipeline?
            directory 'images', 'app/assets/images/dashboard'
          else
            directory 'images', 'public/images/dashboard'
          end
        end
      end
    end
  end
end