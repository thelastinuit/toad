require_relative 'boot'

require "rails"
require "active_model/railtie"
require "active_record/railtie"
require "active_storage/engine"
require "action_controller/railtie"
require "action_view/railtie"

Bundler.require(*Rails.groups)

module Toad
  class Application < Rails::Application
    config.load_defaults 6.0
    config.api_only = true
    config.active_record.schema_format = :sql
  end
end
