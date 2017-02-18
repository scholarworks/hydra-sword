require 'cancan'
module Hydra
  module Sword
    class Engine < ::Rails::Engine
      engine_name 'sword'

      # Rails 4 should do this automatically:
      config.paths.add "app/controllers/concerns", eager_load: true
      config.paths.add "app/models/concerns", eager_load: true
    end
  end
end