# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "madrubocop/version"

Gem::Specification.new do |spec|
  spec.name          = "madrubocop"
  spec.version       = Madrubocop::VERSION
  spec.authors       = ["Zach Toolson"]
  spec.email         = ["zach.toolson@gmail.com"]

  spec.summary       = "Wrapper for MX specific RuboCop settings. https://twitter.com/madrubocop"
  spec.description   = "Wrapper for MX specific RuboCop settings for managing custom settings across many projects."
  spec.homepage      = "https://github.com/ztoolson/madrubocop/"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "bin"
  spec.executables   = []
  spec.require_paths = ["lib"]

  spec.add_dependency "rubocop", "~> 0.35.1"
  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
end
