module Refinery
  module Factories
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::Factories

      engine_name :refinery_factories

      initializer "register refinerycms_factories plugin" do
        Refinery::Plugin.register do |plugin|
          plugin.name = "factories"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.factories_admin_factories_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/factories/factory',
            :title => 'name'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Factories)
      end
    end
  end
end
