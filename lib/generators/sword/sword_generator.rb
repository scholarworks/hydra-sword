# -*- encoding : utf-8 -*-
require 'rails/generators'

class SwordGenerator < Rails::Generators::Base
  def inject_routes
  	routing_code = "mount Hydra::Sword::Engine => '/'"
  	inject_into_file 'config/routes.rb', "\n #{routing_code}\n", {:after => "# API routes\n", :verbose => false}
  end
end
