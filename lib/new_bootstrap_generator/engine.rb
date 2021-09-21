module NewBootstrapGenerator
  class Engine < ::Rails::Engine
    isolate_namespace NewBootstrapGenerator

    config.app_generators.stylesheets false
  end
end
