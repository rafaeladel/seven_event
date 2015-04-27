require 'factory_girl'
module SevenEvent
  class Engine < ::Rails::Engine
    isolate_namespace SevenEvent

    config.generators do |g|
        g.test_framework :rspec, 
          fixture: false, 
          view_specs: false, 
          routing_specs: false
        g.integration_tool :rspec
        g.performance_tool :rspec
	      g.fixture_replacement :factory_girl, :dir => 'spec/factories'
        g.assets false 
	      g.helper false 
    end
  end
end
