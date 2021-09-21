Rails.application.routes.draw do
  mount NewBootstrapGenerator::Engine => "/new_bootstrap_generator"
end
