# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'unbounce_client/version'

Gem::Specification.new do |gem|
  gem.name          = 'unbounce_client'
  gem.version       = UnbounceClientUtils::VERSION
  gem.authors       = ['Aaron Oman']
  gem.email         = ['aaron@unbounce.com']
  gem.description   = %q{Light wrapper around the Unbounce API.}
  gem.summary       = %q{Ruby bindings around the Unbounce API. 100% a work in progress, but fully useable.}
  gem.homepage      = 'https://github.com/GrooveStomp/unbounce_client'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']

  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'rspec'

  gem.add_dependency 'httparty'
  gem.add_dependency 'json'
end
