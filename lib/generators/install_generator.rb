module NewBootstrapGenerator
  class InstallGenerator < ::Rails::Generators::Base
    desc 'Copy BootstrapGenerators default files'
    source_root ::File.expand_path('../templates', __FILE__)

    def copy_lib
      directory "lib/templates"
    end

    def create_layout
      template "layouts/starter.html.erb", "app/views/layouts/application.html.erb"
    end

    def copy_assets
      directory "public/assets/"
    end
  end
end
