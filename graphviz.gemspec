# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'graphviz/version'

Gem::Specification.new do |spec|
	spec.name          = "graphviz"
	spec.version       = Graphviz::VERSION
	spec.authors       = ["Samuel Williams"]
	spec.email         = ["samuel.williams@oriontransfer.co.nz"]
	spec.description   = <<-EOF
		Graphviz is a graph visualisation system. This gem is a lightweight interface for generating graphs with Graphviz.
	EOF
	spec.summary       = "A lightweight interface for generating graphs with Graphviz."
	spec.homepage      = "https://github.com/ioquatix/graphviz"
	spec.license       = "MIT"

	spec.files         = `git ls-files`.split($/)
	spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
	spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
	spec.require_paths = ["lib"]

	spec.has_rdoc = 'yard'

	spec.add_development_dependency "yard"
	spec.add_development_dependency "bundler", "~> 1.3"
	spec.add_development_dependency "rspec", "~> 3.4.0"
	spec.add_development_dependency "rake"
end
