module Refinery
  module Works
    class Engine < Rails::Engine
      include Refinery::Engine
      isolate_namespace Refinery::Works

      engine_name :refinery_works

      initializer "register refinerycms_works plugin" do
        Refinery::Plugin.register do |plugin|
          plugin.name = "works"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.works_admin_works_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/works/work'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Works)
      end
    end
  end
end
