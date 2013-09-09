# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ansible_utils/version'

Gem::Specification.new do |spec|
  spec.name          = "ansible_utils"
  spec.version       = AnsibleUtils::VERSION
  spec.authors       = ["Aaron Cruz"]
  spec.email         = ["aaron@aaroncruz.com"]
  spec.description   = %q{Ansible Generators}
  spec.summary       = %q{Ansible Generators}
  spec.homepage      = "http://aaroncruz.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"

  spec.add_runtime_dependency "thor"
end
