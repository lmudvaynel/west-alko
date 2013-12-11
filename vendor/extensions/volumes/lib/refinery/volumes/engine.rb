module Refinery
  module Volumes
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::Volumes

      engine_name :refinery_volumes

      initializer "register refinerycms_volumes plugin" do
        Refinery::Plugin.register do |plugin|
          plugin.name = "volumes"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.volumes_admin_volumes_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/volumes/volume',
            :title => 'price'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Volumes)
      end
    end
  end
end
