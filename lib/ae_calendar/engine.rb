module AeCalendar
  class Engine < ::Rails::Engine
    isolate_namespace AeCalendar

    if Rails.version >= '3.1'
      initializer :assets do |config|
        Rails.application.config.assets.precompile += %w(modernizr.js)
      end
    end
  end
end
