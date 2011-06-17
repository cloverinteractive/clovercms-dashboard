require 'test_helper'
require File.expand_path( "../../lib/generators/clover_cms/dashboard/install_generator.rb", File.dirname( __FILE__ ) )

class InstallGeneratorTest < Rails::Generators::TestCase
  tests CloverCms::Dashboard::Generators::InstallGenerator
  destination File.expand_path( '../../tmp', File.dirname( __FILE__ ) )
  setup :prepare_destination

  test 'sass and images get copied' do
    run_generator
    assert_file 'app/stylesheets/dashboard.scss', /@import "compass\/reset";/
    assert_file 'public/images/dashboard/logo.png'
    assert_file 'public/images/dashboard/icons/accept.png'
  end

  test 'can set the path for the sass files' do
    run_generator %w(sass)
    assert_file 'app/sass/dashboard.scss', /@import "compass\/reset";/
  end

  test 'can use rails 3.1 asset pipeline' do
    run_generator %w(--asset-pipeline)
    assert_file 'app/assets/stylesheets/dashboard.scss', /@import "compass\/reset";/
    assert_file 'app/assets/images/dashboard/logo.png'
  end
end