module Refinery
  module FactoryPhotos
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::FactoryPhotos

      engine_name :refinery_factory_photos

      initializer "register refinerycms_factory_photos plugin" do
        Refinery::Plugin.register do |plugin|
          plugin.name = "factory_photos"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.factory_photos_admin_factory_photos_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/factory_photos/factory_photo'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::FactoryPhotos)
      end
    end
  end
end
