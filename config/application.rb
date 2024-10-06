require_relative "boot"

require "rails/all"
Bundler.require(*Rails.groups)

module Aa
  class Application < Rails::Application
    config.load_defaults 7.1
    config.autoload_lib(ignore: %w(assets tasks))
    config.active_record.async_query_executor
    config.active_record.global_executor_concurrency
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
  end
end
