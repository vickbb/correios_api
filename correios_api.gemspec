lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "correios_api/version"

Gem::Specification.new do |spec|
	spec.name          = "correios_api"
	spec.version       = CorreiosECT::VERSION
	spec.authors       = ["Renato Filho", "Pedro Fausto"]
	spec.email         = ["renatosousafilho@gmail.com", "pedro.fausto@hotmail.com"]
	spec.summary       = %q{Cliente ruby para api correios}
	spec.description   = %q{Cliente ruby para api correios}
	spec.homepage      = ""
	spec.license       = "MIT"

	spec.files         = `git ls-files`.split($/)
	spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
	spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})


	spec.require_paths = ["lib"]

	spec.add_dependency "recursive-open-struct"
	spec.add_dependency "active_data"

	spec.add_dependency 'net-http-persistent', '~> 2.9.4'
  spec.add_dependency 'rack'
  spec.add_dependency 'savon'

  spec.add_dependency 'coveralls'
  spec.add_dependency 'simplecov', '~> 0.9'
  spec.add_dependency 'webmock', '~> 1.0'

	spec.add_development_dependency "bundler"
	spec.add_development_dependency "rake"
	spec.add_development_dependency "rspec"
	spec.add_development_dependency "pry"


end
