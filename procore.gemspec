# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "procore/version"

Gem::Specification.new do |spec|
  spec.name          = "procore"
  spec.version       = Procore::VERSION
  spec.authors       = ["Procore Engineering"]
  spec.email         = ["opensource@procore.comm"]

  spec.summary       = %q{Procore Ruby Gem}
  spec.description   = %q{Procore Ruby Gem}
  spec.homepage      = "https://github.com/procore/ruby-sdk"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "actionpack"
  spec.add_development_dependency "activerecord"
  spec.add_development_dependency "bundler"
  spec.add_development_dependency "fakefs"
  spec.add_development_dependency "minitest"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "redis"
  spec.add_development_dependency "sqlite3"
  spec.add_development_dependency "webmock"

  spec.add_dependency "httparty", "~> 0.15"
  spec.add_dependency "oauth2", "~> 1.4"
end