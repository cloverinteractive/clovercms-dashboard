module CloverCms
  module Dashboard
    class Engine < Rails::Engine
      $DASHBOARD_APP_PATH       = 'lib/clovercms/dashboard'
      $DASHBOARD_TEMPLATE_PATH  = 'lib/generators/clover_cms/dashboard/templates/'
      $DASHBOARD_SASS_PATH      = File.join $DASHBOARD_TEMPLATE_PATH, 'sass'
      $DASHBOARD_IMAGES_PATH    = File.join $DASHBOARD_TEMPLATE_PATH, 'images'

      paths.app.views   << File.join( $DASHBOARD_APP_PATH, 'app', 'views' )
    end
  end
end
