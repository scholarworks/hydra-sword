# -*- encoding: utf-8 -*-
require File.expand_path('../lib/hydra/sword/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Aaron Collier"]
  gem.email         = ["acollier@calstate.edu"]
  gem.description   = %q{Rails engine to implement a SWORD server in for Hydra}
  gem.summary       = %q{Rails engine to implement a SWORD server in for Hydra}
  gem.homepage      = "https://github.com/projecthydra-labs/hydra-sword"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "hydra-sword"
  gem.require_paths = ["lib"]
  gem.version       = Hydra::Sword::VERSION
  gem.license       = 'Apache 2.0'

  gem.add_dependency 'bootstrap_form'
  gem.add_dependency 'blacklight'
  gem.add_dependency 'cancancan'
  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'rspec-rails'
  gem.add_development_dependency 'rspec-its'
  gem.add_development_dependency 'engine_cart'
end