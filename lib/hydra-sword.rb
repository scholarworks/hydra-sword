require "hydra/sword"
require 'bootstrap_form'

module Hydra
  module Sword
    mattr_accessor :route_options
    self.route_options = {}
    
    def self.draw_routes(router, opts={})
      self.route_options = opts
      router.instance_exec do
        mount Hydra::Sword::Engine => '/'
      end
    end
  end
end