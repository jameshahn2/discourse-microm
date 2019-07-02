# name: DiscourseMicrom
# about:
# version: 0.1
# authors: jameshahn2
# url: https://github.com/jameshahn2


register_asset "stylesheets/common/discourse-microm.scss"


enabled_site_setting :discourse_microm_enabled

PLUGIN_NAME ||= "DiscourseMicrom".freeze

after_initialize do
  
  # see lib/plugin/instance.rb for the methods available in this context
  

  module ::DiscourseMicrom
    class Engine < ::Rails::Engine
      engine_name PLUGIN_NAME
      isolate_namespace DiscourseMicrom
    end
  end

  

  
  require_dependency "application_controller"
  class DiscourseMicrom::ActionsController < ::ApplicationController
    requires_plugin PLUGIN_NAME

    before_action :ensure_logged_in

    def list
      render json: success_json
    end
  end

  DiscourseMicrom::Engine.routes.draw do
    get "/list" => "actions#list"
  end

  Discourse::Application.routes.append do
    mount ::DiscourseMicrom::Engine, at: "/discourse-microm"
  end
  
end
