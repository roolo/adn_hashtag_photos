# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'adn_hashtag_photos/version'

Gem::Specification.new do |spec|
  spec.name          = 'adn_hashtag_photos'
  spec.version       = AdnHashtagPhotos::VERSION
  spec.authors       = ['Mailo Svetel']
  spec.email         = ['development@rooland.cz']

  spec.summary       = %q{This gem creates photo gallery data where all photos has one hashtag in common.}
  spec.homepage      = 'https://github.com/roolo/adn_hashtag_photos'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'TODO: Set to http://mygemserver.com to prevent pushes to rubygems.org, or delete to allow pushes to any server.'
  end

  spec.add_runtime_dependency 'rest-client', '~> 1.8.0'

  spec.add_development_dependency 'bundler',  '~> 1.9'
  spec.add_development_dependency 'rake',     '~> 10.0'
  spec.add_development_dependency 'rspec',    '~> 3.2.0'
  spec.add_development_dependency 'webmock',  '~> 1.21.0'
  spec.add_development_dependency 'vcr',      '~> 2.9.3'
end
