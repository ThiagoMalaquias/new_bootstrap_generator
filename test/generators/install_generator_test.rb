require 'test_helper'
require 'generators/install_generator'

class InstallGeneratorTest < Rails::Generators::TestCase
  tests NewBootstrapGenerator::InstallGenerator
  destination File.expand_path('../../../../tmp', __FILE__)

  setup do
    prepare_dummy_app
  end

  test "should copy controller erb templates" do
    run_generator 

    assert_file "lib/templates/erb/controller/view.html.erb"
    assert_no_file "lib/templates/slim/controller/view.html.slim"
  end

  test "should copy scaffold erb templates" do
    run_generator

    %w(index edit new show _form).each do |view|
      assert_file "lib/templates/erb/scaffold/#{view}.html.erb"
      assert_no_file "lib/templates/slim/scaffold/#{view}.html.slim"
    end
  end

  private

  def prepare_dummy_app
    FileUtils.cp_r('test/dummy/.', destination_root)
  end
end
