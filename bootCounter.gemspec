# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bootCounter/version'

Gem::Specification.new do |spec|
  spec.name          = "bootCounter"
  spec.version       = BootCounter::VERSION
  spec.authors       = ["BootCoder"]
  spec.email         = ["bootcoder@gmail.com"]

  spec.summary       = %q{Provide random Boots to navigate during live code.}
  spec.description   = %q{Simple usage, just input a integer value for the number of Boots you have. Keep hitting enter until you've used them up.}
  spec.homepage      = "https://github.com/bootcoder/bootCounter"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   << "bootCounter"
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
