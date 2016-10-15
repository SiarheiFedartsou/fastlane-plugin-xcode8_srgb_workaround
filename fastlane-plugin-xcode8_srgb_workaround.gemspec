# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fastlane/plugin/xcode8_srgb_workaround/version'

Gem::Specification.new do |spec|
  spec.name          = 'fastlane-plugin-xcode8_srgb_workaround'
  spec.version       = Fastlane::Xcode8SrgbWorkaround::VERSION
  spec.author        = %q{Siarhei Fiedartsou}
  spec.email         = %q{Sergei_Fedortsov@cedoni.com}

  spec.summary       = %q{Converts PNGs in your project to sRGB format to avoid problems described here(actual for deployment target <9.3)}
  # spec.homepage      = "https://github.com/<GITHUB_USERNAME>/fastlane-plugin-xcode8_srgb_workaround"
  spec.license       = "MIT"

  spec.files         = Dir["lib/**/*"] + %w(README.md LICENSE)
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  # spec.add_dependency 'your-dependency', '~> 1.0.0'

  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'fastlane', '>= 1.105.0'
end
