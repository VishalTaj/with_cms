module WithCms
  class Engine < ::Rails::Engine
  	require 'jquery-rails'
    isolate_namespace WithCms
    initializer "with_cms", before: :load_config_initializers do |app|
      Rails.application.routes.append do
        mount WithCms::Engine, at: "/with_cms"
      end
      config.paths["db/migrate"].expanded.each do |expanded_path|
        Rails.application.config.paths["db/migrate"] << expanded_path
      end
    end
    config.before_initialize do
      ActiveSupport.on_load :action_controller do
        helper WithCms::Engine.helpers
      end
    end
    config.assets.precompile << %w( with_cms/* )
  end
end
