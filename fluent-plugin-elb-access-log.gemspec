# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fluent_plugin_elb_access_log/version'

Gem::Specification.new do |spec|
  spec.name          = 'fluent-plugin-elb-access-log'
  spec.version       = FluentPluginElbAccessLog::VERSION
  spec.authors       = ['Genki Sugawara']
  spec.email         = ['sugawara@cookpad.com']
  spec.summary       = %q{Fluentd input plugin for AWS ELB Access Logs.}
  spec.description   = %q{Fluentd input plugin for AWS ELB Access Logs.}
  spec.homepage      = 'https://github.com/winebarrel/fluent-plugin-elb-access-log'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'fluentd', '>= 0.14'
  spec.add_dependency 'aws-sdk-s3', '~> 1.8'
  spec.add_dependency 'addressable'
  spec.add_dependency 'multiple_files_gzip_reader'
  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec', '>= 3.0.0'
  spec.add_development_dependency 'timecop'
  spec.add_development_dependency 'test-unit', '>= 3.1.0'
  spec.add_development_dependency 'rspec-match_table', '>= 0.1.1'
  spec.add_development_dependency 'coveralls'
end
