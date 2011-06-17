require 'test_helper'
require File.expand_path( "../../lib/generators/clover_cms/dashboard/views_generator.rb", File.dirname( __FILE__ ) )

class ViewsGeneratorTest < Rails::Generators::TestCase
  tests CloverCms::Dashboard::Generators::ViewsGenerator
  destination File.expand_path( '../../tmp', File.dirname( __FILE__ ) )
  setup :prepare_destination

  test 'views get copied' do
    run_generator
    assert_directory  'app/views/layouts/dashboard'
    assert_file       'app/views/layouts/dashboard.html.erb'
  end

  test 'can use haml as template format' do
    run_generator %w(--haml)
    assert_directory  'app/views/layouts/dashboard'
    assert_file       'app/views/layouts/dashboard.html.haml'
  end
end