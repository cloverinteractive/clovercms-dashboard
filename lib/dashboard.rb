module CloverCms
  module Dashboard
    class Engine < Rails::Engine
      $DASHBOARD_VIEWS_PATH    = 'lib/clovercms/dashboard/app/views'
      $DASHBOARD_SASS_PATH     = 'lib/generators/clover_cms/dashboard/templates/sass'
      $DASHBOARD_IMAGES_PATH   = 'lib/generators/clover_cms/dashboard/templates/images'

      paths.app.views << $DASHBOARD_VIEWS_PATH
    end
  end
end
